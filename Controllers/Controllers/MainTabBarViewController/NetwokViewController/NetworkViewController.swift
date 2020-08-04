//
//  NetworkViewController.swift
//  Controllers
//
//  Created by Robson James Junior on 03/08/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
import Utilities
import UI

public class NetworkViewController: UITableViewController {
  
  public init() {
    super.init(style: .grouped)
    self.tableView.separatorStyle = .none
    self.view.backgroundColor = UIColor(named: "DefaultLightDark")
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(cell: CommonTableViewCell.self)
  }
  
  public override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
  }
  
  public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = CommonTableViewCell.identifier
    guard let cell = getCell(tableView: tableView,
                             indexPath: indexPath,
                             identifier: identifier) as? CommonTableViewCell else {
                              return UITableViewCell()
    }
    return cell
  }
  
}
