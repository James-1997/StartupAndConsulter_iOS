//
//  LoginView.swift
//  UI
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Utilities
import UIKit
import Stevia

public final class MainView: UITableView {
  
  public init() {
    super.init(frame: .zero, style: .grouped)
    self.backgroundColor = .red
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
