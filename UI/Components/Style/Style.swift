//
//  StyleKit.swift
//  UI
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

public struct LocalizableKeys {
  
}

public struct ImagePaths {
  public enum TabBarIcons: String {
    case startup = "Startups"
    case consulter = "Consulters"
    case network = "Network"
    case profile = "Profile"
    
    public var title: String {
      return self.rawValue
    }
    
    public var icon: UIImage? {
      return UIImage(named:self.rawValue)
    }
  }
}

struct LayoutMargins {
  
}

struct Fonts {
  
}

extension UIColor {
  static let commonColor: UIColor? = UIColor(named: "DefaultLightDark")
}
