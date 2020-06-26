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
  
  private var viewForCell = UIView()
  private var stackViewLeft = UIStackView()
      private var elementImageView = UIImageView()
      private var stackViewNameAndType = UIStackView()
          private let nameLabel = UILabel()
          private let typeLabel = UILabel()
  
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
    self.subviews(viewForCell)
    viewForCell.subviews(stackViewLeft)
    stackViewLeft.addArrangedSubview(elementImageView)
    stackViewLeft.addArrangedSubview(stackViewNameAndType)
    stackViewNameAndType.addArrangedSubview(nameLabel)
    stackViewNameAndType.addArrangedSubview(typeLabel)
  }
  
  func autolayout() {
    let margin: CGFloat = 16.0
    viewForCell.fillHorizontally(padding: margin)
    viewForCell.top(margin/2)
    viewForCell.bottom(margin/2)

    stackViewLeft.centerVertically().left(margin)
    stackViewLeft.axis = .horizontal
    stackViewLeft.alignment = .leading
    stackViewLeft.distribution = .fill
    stackViewLeft.spacing = 8
            
    stackViewNameAndType.axis = .vertical
    stackViewNameAndType.alignment = .leading
    stackViewNameAndType.distribution = .fillEqually
    stackViewNameAndType.centerVertically()
  }
  
  func customComponents() {
    self.separatorInset = .zero
    elementImageView.backgroundColor = UIColor.darkGray
    
    elementImageView.contentMode = .scaleAspectFill
    elementImageView.size(62)
    elementImageView.frame.size = CGSize(width: 62, height: 62)
    elementImageView.layer.cornerRadius = elementImageView.frame.height / 2
    elementImageView.layer.borderWidth = 2
    elementImageView.layer.borderColor = UIColor.yellow.cgColor
    elementImageView.clipsToBounds = true
    elementImageView.layer.masksToBounds = true
    
    self.backgroundColor = .clear
    viewForCell.backgroundColor = UIColor.lightGray
    viewForCell.layer.cornerRadius = 16
    viewForCell.layer.borderColor = UIColor.black.cgColor
    viewForCell.layer.borderWidth = 2
    
    nameLabel.font = UIFont.systemFont(ofSize: 14)
    typeLabel.font = UIFont.systemFont(ofSize: 14)
    typeLabel.textColor = UIColor.blue
    
    nameLabel.text = "Robson James"
    typeLabel.text = "iOS"
  }
  
  public func setName(txt: String) {
    nameLabel.text = txt
  }
  
//  public func setImage(imageUrl: String) {
//    DispatchQueue.main.async {
//      self.elementImageView.downloaded(from: imageName)
//    }
//  }
//  public func setType(type: TypeProfessional) {
//    typeLabel.text = type.description
//    typeLabel.backgroundColor = type.color
//  }
  
  public func setType(type: String, color: UIColor = .lightText) {
      typeLabel.text = type
      
  }
  
  public func setImage(imageUrl: String) {
    
    
  }
    
}
