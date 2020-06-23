//
//  AppFactory.swift
//  Main
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
import Controllers

protocol FactoryController {
  static func makeController() -> UIViewController
}

class AppFactory: NSObject, FactoryController {
  static func makeController() -> UIViewController {
    let mainVC = MainViewController()
    return mainVC
  }
}
