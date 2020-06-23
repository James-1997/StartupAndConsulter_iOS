import Foundation
import UIKit

public class MainTabBarViewController: UITabBarController {
  private let firstScreen = UINavigationController(rootViewController: MainViewController())
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
    if let items = tabBar.items {
      for (index, item) in items.enumerated() {
        switch(index) {
          case 0:
            item.title = "firstScreenTitle"
            item.image = UIImage(named: "firstScreenImagePath")
            break
          case 1:
            item.title = "secondScreenTitle"
            item.image = UIImage(named: "secondScreenImagePath")
            break
          case 2:
            item.title = "thirdScreenTitle"
            item.image = UIImage(named: "thirdScreenImagePath")
            break
          case 3:
            item.title = "fourthyScreenTitle"
            item.image = UIImage(named: "fourthyScreenImagePath")
            break
          default:
            break
        }
      }
    }
  }
  
  func subviewControllers() {
     let viewControllers = [firstScreen, secondScreen, thirdScreen, fourthyScreen]
     setViewControllers(viewControllers, animated: true)
   }
}
