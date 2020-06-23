//
//  MainViewController.swift
//  Controllers
//
//  Created by Robson James Junior on 21/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
import Utilities
import UI

public class MainViewController: UITableViewController {
  
  public override func loadView() {
    self.view = MainView()
    super.loadView()
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(cell: CommonTableViewCell.self)
  }
  
  public override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CommonTableViewCell.identifier, for: indexPath) as? CommonTableViewCell
    return cell ?? UITableViewCell()
  }
}
