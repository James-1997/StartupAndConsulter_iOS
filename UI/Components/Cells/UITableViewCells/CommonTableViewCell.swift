//
//  CommonTableViewCell.swift
//  UI
//
//  Created by Robson James Junior on 22/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

public class CommonTableViewCell: UITableViewCell {
  
  public static let identifier = "CommonTableViewCell"
  
  public override func awakeFromNib() {
      super.awakeFromNib()
      commonInit()
  }
  
  public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: CommonTableViewCell.identifier)
      commonInit()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension CommonTableViewCell: CodeViewSetup {
  func subview() {
    
  }
  
  func autolayout() {
    
  }
  
  func customComponents() {
    self.backgroundColor = .brown
  }

}
