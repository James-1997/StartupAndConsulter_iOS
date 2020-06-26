//
//  RedondButton.swift
//  UI
//
//  Created by Robson James Junior on 25/06/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit
 
public class RoundedButton: UIButton {
  private var colorButton: UIColor?
  private var titleButton: String?
  private var imageIcon: UIImage?
  private var radius: CGFloat?
  private let edgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8)
 
  public override func layoutSubviews() {
    super.layoutSubviews()
    if let radius = self.radius {
      layer.cornerRadius = radius
    } else {
      layer.cornerRadius = self.frame.size.height/2
    }
    if imageView != nil {
      imageEdgeInsets = edgeInsets
    }
  }
 
  public func setStyle(bgColor: UIColor,
                       titleColor: UIColor,
                       title: String,
                       nameIcon: String? = nil,
                       radius: CGFloat? = nil,
                       to state: UIControl.State = .normal) {
    DispatchQueue.main.async {
      self.setTitle(title, for: state)
      if let name = nameIcon, let image = UIImage(named: name) {
        self.setImage(image, for: state)
        self.imageView?.tintColor = titleColor
      }
      if let radius = radius {
        self.radius = radius
      } else {
        self.radius = self.frame.size.height / 2
      }
      
      let background = UIImage()
      
      self.setBackgroundImage(<#T##image: UIImage?##UIImage?#>, for: state)
      self.setTitleColor(titleColor, for: state)
    }
  }
 
  public func addBorder(withColor: UIColor, andWidhBorder: CGFloat) {
    self.layer.borderColor = withColor.cgColor
    self.layer.borderWidth = andWidhBorder
  }
 
  public func setActionToButton(controller: UIViewController, selector: Selector) {
    self.addTarget(controller, action: selector, for: .touchUpInside)
  }
}
