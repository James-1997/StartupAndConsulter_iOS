//
//  String+Utils.swift
//  Utilities
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation

extension String {
  public func getFirstElementInComponents(separetedBy separatedValue: String) -> String {
    return self.components(separatedBy: separatedValue)[0]
  }
}
