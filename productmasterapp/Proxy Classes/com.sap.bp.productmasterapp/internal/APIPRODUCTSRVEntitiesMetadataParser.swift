// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = APIPRODUCTSRVEntitiesMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser: CSDLParser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = APIPRODUCTSRVEntitiesMetadataParser.options
        let metadata: CSDLDocument = parser.parseInProxy(APIPRODUCTSRVEntitiesMetadataText.xml, url: "API_PRODUCT_SRV")
        metadata.proxyVersion = "17.12.1-7fb011-20180122"
        return metadata
    }
}
