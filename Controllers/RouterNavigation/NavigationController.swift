//
//  Router.swift
//  Controllers
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
import Utilities

public final class NavigationController: UINavigationController {
  private var currentViewController: UIViewController?
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  public convenience init() {
    self.init(nibName: nil, bundle: nil)
  }
  
  private func setup() {
    //      navigationBar.barTintColor = #BarColor
    //      navigationBar.tintColor = #TintColor
    //        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white #TitleColor]
    //        navigationBar.isTranslucent = false
    //      navigationBar.barStyle = .black #barStyleColor
  }
  
  public func setRootViewController(_ viewController: UIViewController) {
    setViewControllers([viewController], animated: true)
    currentViewController = viewController
    currentViewController?.hideBackButtonText()
  }
  
  public func pushViewController(_ viewController: UIViewController) {
    pushViewController(viewController, animated: true)
    currentViewController = viewController
    currentViewController?.hideBackButtonText()
  }
}
