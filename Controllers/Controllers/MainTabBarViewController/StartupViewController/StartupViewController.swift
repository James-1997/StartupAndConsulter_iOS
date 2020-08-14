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
import Stevia

public class StartupViewController: UIViewController {
  
  internal let tableView = UITableView(frame: .zero)
  
  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    style()
    autolayout()
  }
  
  public func style() {
    setLargeTitle(title: "Startup")
    view.backgroundColor = UIColor(named: "DefaultLightDark")
    setupTableView()  
  }
  
  func setupTableView() {
    tableView.separatorStyle = .none
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(cell: CommonTableViewCell.self)
    view.subviews([tableView])
    view.addSubview(tableView)
  }
  
  public func autolayout() {
    tableView.fillHorizontally()
    tableView.Top == view.safeAreaLayoutGuide.Top
    self.tableView.Bottom == view.Bottom
  }
}

extension StartupViewController: UITableViewDelegate {

  public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
      return 0
  }
  
  public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
}

extension StartupViewController: UITableViewDataSource {
  public func numberOfSections(in tableView: UITableView) -> Int {
     return 1
   }
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = CommonTableViewCell.identifier
    guard let cell = self.tableView.getCell(indexPath: indexPath,
                                            identifier: identifier) as? CommonTableViewCell else {
                                              return UITableViewCell()
    }
    return cell
  }
}
