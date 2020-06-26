//
//  CodeViewProtocols.swift
//  UI
//
//  Created by Robson James Junior on 22/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation

protocol CodeViewSetup {
  func commonInit()
  func subview()
  func autolayout()
  func customComponents()
}

extension CodeViewSetup {
  func commonInit() {
    subview()
    autolayout()
    customComponents()
  }
}
