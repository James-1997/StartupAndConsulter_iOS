//
//  UITableViewAdapter.swift
//  UI
//
//  Created by Robson James Junior on 23/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
import Utilities

public class UITableViewAdapter: NSObject {
  public var numberOfSections: Int = 0
  public var numberOfRowsInSection: Int = 0
}

extension UITableViewAdapter: UITableViewDelegate {
  
}

extension UITableViewAdapter: UITableViewDataSource {
  public func numberOfSections(in tableView: UITableView) -> Int {
    return numberOfSections
  }
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numberOfRowsInSection
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    return cell
  }
}
