//
//  MainViewController.swift
//  SequeUIKit
//
//  Created by Mike Melko on 6/27/22.
//

import UIKit

class MainViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  
    let button = UIButton()
  
    button.setTitle("Open logo VC", for: .normal)
    button.setTitleColor(UIColor.blue, for: .normal)
    button.frame = CGRect(x: 15, y: 50, width: 300, height: 500)

    button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    self.view.addSubview(button)
  }

  @objc func buttonTapped(_ sender: UIButton) {
    print("Main button tapped")
        
    guard let navigationController = navigationController else {
      return
    }
    
    let logoViewController = LogoViewController()
    navigationController.pushViewController(logoViewController, animated: true)
  }
  
}

