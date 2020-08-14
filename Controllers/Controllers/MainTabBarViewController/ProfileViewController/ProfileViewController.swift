//
//  ProfileViewController.swift
//  Controllers
//
//  Created by Robson James Junior on 03/08/20.
//  Copyright © 2020 robsonJames. All rights reserved.
//

import Foundation
import UIKit

public class ProfileViewController: UIViewController {
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    style()
    autolayout()
  }
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  func autolayout() {
    
  }
  
  func style() {
    setLargeTitle(title: "Profile")
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func loadView() {
    super.loadView()
    self.view.backgroundColor = .white
  }
  
  public override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  public override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  public override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
  }
  
  public override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
  }
  
}
