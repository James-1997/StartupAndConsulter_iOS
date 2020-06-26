//
//  UIAdapter.swift
//  UI
//
//  Created by Robson James Junior on 23/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

enum ProfessionalType: String {
  case iOS = "iOS Developer"
  case web = "Web Developer"
  
  var title: String {
    return self.rawValue
  }
  
  var color: UIColor {
    switch self {
      case .iOS:
        return UIColor.red
      case .web:
        return UIColor.blue
    }
  }
}

struct ProfessionalTypeAdapter {
  public var type: ProfessionalType
}
