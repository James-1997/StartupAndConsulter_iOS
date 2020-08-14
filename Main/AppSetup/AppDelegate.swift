import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
   window = UIWindow(frame: UIScreen.main.bounds)
    let rootViewController = AppFactory.makeController()
    let navigationController = UINavigationController(rootViewController: rootViewController)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    return true
  }
  
  // MARK: - Core Data stack
   lazy var persistentContainer: NSPersistentContainer = {
     let container = NSPersistentContainer(name: "Main")
     container.loadPersistentStores(completionHandler: { (storeDescription, error) in
       if let error = error as NSError? {
         fatalError("Unresolved error \(error), \(error.userInfo)")
       }
     })
     return container
   }()
}
