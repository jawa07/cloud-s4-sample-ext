package com.sap.cloud.s4hana.eventing.security;

import java.io.Serializable;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Security;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.commons.lang3.SerializationException;
import org.apache.commons.lang3.SerializationUtils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import com.google.common.annotations.VisibleForTesting;
import com.sap.cloud.s4hana.eventing.core.exceptions.SAPSecurityException;

/**
 * Alternative cipher for local deployment (for testing). Since the maximum
 * length of a system variable is limited in Windows to 2048 characters it is
 * not possible to model an SAP Cloud Platform destination via system variable
 * to store encryption keys.
 * <p>
 * Please note that encryption is performed using pure RSA algorithm for the
 * sake of simplicity. It limits the maximum amount of encrypted data to roughly
 * 1/8 of the key size. E.g. if key size is 4096 bit then only 501 bytes can be
 * encrypted.
 * <p>
 * Normally you would use symmetric encryption algorithm (e.g. AES) to encrypt
 * the data and use RSA to encrypt and decrypt AES key.
 *
 * @see CloudRSACipher
 */
@Service
@Profile("Local")
public class LocalRSACipher implements RSACipher {
    
    private static String PRIVATE_KEY = "-----BEGIN RSA PRIVATE KEY----- MIIEogIBAAKCAQB2W3B960rwfgVVOPaGyfPNteUI9DNkoKuNz77f+4mYsvSHGdKY aFTeVDHyDcKEslVli36GBi0ZMqSZy+12MTcqj+4Xbe7/OhyTGPVHdptuOV8wpr9U DyJd3JUUfb93Z0SOgPi5HscPeKn+Mo8EhMNgKj6ivDHDMefl9Iz3gBijAFWIPD+K 6WUPtLZdl1dCtFTWhGNRNJPFEq2KyXJExxx275gnnLiAEOhz8/Hv1NlU66g914RN 2kXbmCy5i3FQaiur7/ozZ800g6+0HjgR4609auXtO9yQhmEbDStZcQT/rDx2de76 gYmgngtGp15idNipiHQUQGjhXxPkiwxWo24tAgMBAAECggEAO7ZWQrD61eo+doiO l+I7hoVGUAYkB5in9JvjCM221bszcxWsEghRCPohWKVohdoTC3AdHTDwf831DUK9 QuwBkQ+cZ2WnNkzzLaNh2/QS5sE7LShzTs1z4TbwX64xcuQ+ykZ3Na45b6zI1t5b GUSB7Xpir2eTE4+SF4oRtKyDwXgwvLeYy4g4Me1TEeY2sSSd6P6HHvxPTOUEscT+ qTGam3J3eoBrnrdzYqa9bCO06Wzsch2cSA9oNCe720qgK2Nu7io3pGLlWAPjR1Me jg5uVwD2KedRr1wdX6TiAhvtZ+HmTWxUYLi4alMbGnpOJWC6JpS35nsZpKjKyC7F dnz9AQKBgQDEoNcD/RS4T5JtCMwcBWWZ32wa/LK1ww9Xz+MVTTCxEBwPOQ5mgQnM 7KI2sw1vjsn4Jz20ewEAmVBg01gDA78atWNOrSxepudiMCcbZZ04nSLhKdWMcSsP CAXdQ4tOahDCcVbrCrd49jCu/7p/rOad2culuNCamOrydMmwC6PcxQKBgQCaGFNp vMYXBhV87wQGuAxGiR27fyhgYhx4bRbr0N9q/ayNOq57YQ5GvyxRm0qYUD6hanPK 8sgMjkgrBDEcvT+FBvRv8stOYi5FYFymHBni5mdCL6ERE8p3lMbAEFayR/B5GJyt vQVFejXR29mp4F18eUcBzhC56A4uUAeeh08ySQKBgQC/pRRsqsr7KXNKGnz2AryY UQ8I7qswRUI7EEAAjw+aRF1U6QOEHNj0ht9D+RhrVvy7hWO6+PhtIQEanmL17Tzi R1DXaioIxxxWsyAqr8uhVmacly2wiMyzBdrRYffxIafcHKPeyr8wgqPIrS+VKWxN Be5bQ9ruE4VLc1Dw6Sd5EQKBgGbucuGBoIyGmtnuSrE2RbTkKIEzKkRfpQboT9RL nMG6G4XnOd/ecAvf7XnBkq11hLCMDDb3v5tre1eIoEnDPGfewm75Lsb4HFJpUNoA kWYYY8c5S4y9vJPuRGjNQSwrk71ALIB9b8T+Im9BPP8ViTz5Qe45uMCF+tsCyGQj nEpJAoGARC2AE4JviJ2ucJBMHTJHzFnIz9w3K/jmUl78rtUgLHC1yY8jTqUDDG/j /BekZdFLe0OfrUaoBtZSDP65tdE/6kyukWB0bPQgVUdSJE0VNAqnmuw1DsM1da9A WA4VGR0J86YL6UH9pIdLVwV4YFF8n0BnwBEgRLLTX1253QsOzo4= -----END RSA PRIVATE KEY-----";
    private static String PUBLIC_KEY = "-----BEGIN PUBLIC KEY----- MIIBITANBgkqhkiG9w0BAQEFAAOCAQ4AMIIBCQKCAQB2W3B960rwfgVVOPaGyfPN teUI9DNkoKuNz77f+4mYsvSHGdKYaFTeVDHyDcKEslVli36GBi0ZMqSZy+12MTcq j+4Xbe7/OhyTGPVHdptuOV8wpr9UDyJd3JUUfb93Z0SOgPi5HscPeKn+Mo8EhMNg Kj6ivDHDMefl9Iz3gBijAFWIPD+K6WUPtLZdl1dCtFTWhGNRNJPFEq2KyXJExxx2 75gnnLiAEOhz8/Hv1NlU66g914RN2kXbmCy5i3FQaiur7/ozZ800g6+0HjgR4609 auXtO9yQhmEbDStZcQT/rDx2de76gYmgngtGp15idNipiHQUQGjhXxPkiwxWo24t AgMBAAE= -----END PUBLIC KEY-----";

    /**
	 * Encryption algorithm
	 * 
	 */
	public static final String ALGORITHM = "RSA";
    
    private final KeyPair keyPair;
    
    public LocalRSACipher() throws NoSuchAlgorithmException, InvalidKeySpecException {
        keyPair = getKeyPairForLocalTesting(ALGORITHM);
    }
    
    public static KeyPair getKeyPairForLocalTesting(final String algorithm) throws NoSuchAlgorithmException, InvalidKeySpecException {
        // to overcome common key conversion issues 
        Security.addProvider(new BouncyCastleProvider());

        KeyFactory keyFactory = KeyFactory.getInstance(ALGORITHM);

        PRIVATE_KEY = RSACipher.removeExtraCharacters(PRIVATE_KEY, algorithm, /* isPrivateKey = */ true);
        PKCS8EncodedKeySpec keySpecPKCS8 = new PKCS8EncodedKeySpec(Base64.getDecoder().decode(PRIVATE_KEY));
        final PrivateKey privateKey = keyFactory.generatePrivate(keySpecPKCS8);

        PUBLIC_KEY = RSACipher.removeExtraCharacters(PUBLIC_KEY, algorithm, /* isPrivateKey = */ false);
        X509EncodedKeySpec keySpecX509 = new X509EncodedKeySpec(Base64.getDecoder().decode(PUBLIC_KEY));
        final PublicKey publicKey = (RSAPublicKey) keyFactory.generatePublic(keySpecX509);
        
        return new KeyPair(publicKey, privateKey);
    }

    @Override
    public PublicKey getPublicKey() {
        return keyPair.getPublic();
    }
    
    @VisibleForTesting
    protected PrivateKey getPrivateKey() {
        return keyPair.getPrivate();
    }

    @Override
    public String encrypt(Serializable object) throws SAPSecurityException {
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);  
            cipher.init(Cipher.ENCRYPT_MODE, getPrivateKey());
            
            return Base64.getUrlEncoder().encodeToString(cipher.doFinal(SerializationUtils.serialize(object)));
        } catch (NoSuchAlgorithmException e) {
            throw RSACipher.logAndWrap(e, ALGORITHM);
        } catch (NoSuchPaddingException | InvalidKeyException | BadPaddingException | IllegalBlockSizeException e) {
            throw RSACipher.logAndWrap("Security exception when trying to encrypt access token", e);
        } catch (SerializationException e) {
            throw RSACipher.logAndWrap("Serialization exception when trying to encrypt access token", e);
        } 
    }

    @Override
    public <T extends Serializable> T decrypt(String encrypted) throws SAPSecurityException {
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.DECRYPT_MODE, getPublicKey());
            
            return SerializationUtils.deserialize(cipher.doFinal(Base64.getUrlDecoder().decode(encrypted)));
        } catch (NoSuchAlgorithmException e) {
            throw RSACipher.logAndWrap(e, ALGORITHM);
        } catch (IllegalArgumentException | NoSuchPaddingException | InvalidKeyException | BadPaddingException | IllegalBlockSizeException e) {
            throw RSACipher.logAndWrap("Security exception when trying to decrypt access token", e);
        } catch (SerializationException e) {
            throw RSACipher.logAndWrap("Serialization exception when trying to decrypt access token", e);
        }
    }
    
}
