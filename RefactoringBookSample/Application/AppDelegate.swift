import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
    {
        window = UIWindow()

        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.whiteColor()

        window?.rootViewController = viewController
        window?.makeKeyAndVisible()

        return true
    }
}
