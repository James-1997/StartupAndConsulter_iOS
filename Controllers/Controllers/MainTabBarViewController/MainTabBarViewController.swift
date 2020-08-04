import Foundation
import UIKit
import UI

public class MainTabBarViewController: UITabBarController {
  private var tabBarIcon: ImagePaths.TabBarIcons?
  
  private let startupVC = UINavigationController(rootViewController: StartupViewController())
  private let consulterVC = UINavigationController(rootViewController: ConsulterViewController())
  private let networkVC = UINavigationController(rootViewController: NetworkViewController())
  private let profileVC = UINavigationController(rootViewController: ProfileViewController())
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}

extension MainTabBarViewController: ControllerProtocol {
  func setup() {
    subviewControllers()
    tabBar.unselectedItemTintColor = .gray
    if let items = tabBar.items {
      for (index, item) in items.enumerated() {
        switch(index) {
          case 0:
            tabBarIcon = .startup
            break
          case 1:
           tabBarIcon = .consulter
            break
          case 2:
            tabBarIcon = .network
            break
          case 3:
            tabBarIcon = .profile
            break
          default:
            break
        }
        item.title = tabBarIcon?.title
        item.image = tabBarIcon?.icon
      }
    }
  }
  
  func subviewControllers() {
     let viewControllers = [startupVC, consulterVC, networkVC, profileVC]
     setViewControllers(viewControllers, animated: true)
   }
}
