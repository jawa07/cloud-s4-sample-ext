import SAPFiori
import SAPFioriFlows
import SAPFoundation
import SAPCommon
import SAPOData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate, OnboardingManagerDelegate{
    
    // MARK: - Properties
    
    var window: UIWindow?
    var apiproductsrvEntities: APIPRODUCTSRVEntities<OnlineODataProvider>!
    
    // MARK: - Lifecycles
    
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Set a FUIInfoViewController as the rootViewController, since there it is not set in the Main.storyboard
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = FUIInfoViewController.createSplashScreenInstanceFromStoryboard()
        UINavigationBar.applyFioriStyle()
        OnboardingManager.shared.delegate = self
        OnboardingManager.shared.onboardOrRestore()
        return true
    }
    
    /// To only support portrait orientation during onboarding
    func application(_: UIApplication, supportedInterfaceOrientationsFor _: UIWindow?) -> UIInterfaceOrientationMask {
        switch OnboardingFlowController.presentationState {
        case .onboarding, .restoring:
            return .portrait
        default:
            return .allButUpsideDown
        }
    }
    
    // MARK: - Onboarding
    
    func onboarded(onboardingContext: OnboardingContext) {
        self.configureOData(onboardingContext.sapURLSession, onboardingContext.authenticationURL!)
        self.setRootViewController()
    }
    
    // MARK: - Defining the Entry Point
    
    private func setRootViewController() {
        DispatchQueue.main.async {
            let splitViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MainSplitViewController") as! UISplitViewController
            splitViewController.delegate = self
            splitViewController.modalPresentationStyle = .currentContext
            splitViewController.preferredDisplayMode = .allVisible
            self.window!.rootViewController = splitViewController
        }
    }
    
    //MARK: - Split View
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }

        if !topAsDetailController.isBeingPresented {
            return true
        }
        return false
    }
    
    // MARK: - Configure OData
    
    private func configureOData(_ urlSession: SAPURLSession, _ serviceRoot: URL) {
        let odataProvider = OnlineODataProvider(serviceName: "APIPRODUCTSRVEntities", serviceRoot: serviceRoot, sapURLSession: urlSession)
        odataProvider.serviceOptions.checkVersion = true
        self.apiproductsrvEntities = APIPRODUCTSRVEntities(provider: odataProvider)
        // To update entity force to use X-HTTP-Method header
        self.apiproductsrvEntities.provider.networkOptions.tunneledMethods.append("MERGE")
    }
}


