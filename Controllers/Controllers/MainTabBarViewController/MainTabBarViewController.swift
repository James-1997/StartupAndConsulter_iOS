import Foundation
import UIKit
import UI

public class MainTabBarViewController: UITabBarController {
  private var tabBarIcon: ImagePaths.TabBarIcons?
  
  private let startupViewController = UINavigationController(rootViewController: StartupViewController())
  private let secondScreen = UINavigationController(rootViewController: UIViewController())
  private let thirdScreen = UINavigationController(rootViewController: UIViewController())
  private let fourthyScreen = UINavigationController(rootViewController: UIViewController())
  
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
    secondScreen.view.backgroundColor = .red
    thirdScreen.view.backgroundColor = .yellow
    fourthyScreen.view.backgroundColor = .blue
     let viewControllers = [startupViewController, secondScreen, thirdScreen, fourthyScreen]
     setViewControllers(viewControllers, animated: true)
   }
}
