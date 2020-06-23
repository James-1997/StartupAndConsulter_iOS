//
//  RouterNavigationProtocol.swift
//  Controllers
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

protocol RouterNavigation {
  func setupNavigationStyle()
  func setRootViewController(_ viewController: UIViewController)
  func pushViewController(_ viewController: UIViewController)
}
