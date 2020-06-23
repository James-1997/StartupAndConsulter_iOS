//
//  LoginView.swift
//  UI
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

public final class MainView: UITableView {
  
  public init() {
    super.init(frame: .zero, style: .grouped)
    self.backgroundColor = .blue
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
