//
//  LogoViewController.swift
//  SequeUIKit
//
//  Created by Mike Melko on 6/27/22.
//

import UIKit

class LogoViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .white
    
    if let image = UIImage(named: "EYLogo") {
      let imageView = UIImageView(image: image)
      
      [imageView].forEach {
        $0.contentMode = .scaleAspectFit
        $0.frame.size.width = 0.75 * self.view.frame.width
        $0.center = self.view.center
        view.addSubview($0)
      }
    }
    
    let button = UIButton()
    [button].forEach {
      $0.setTitle("Back to main VC", for: .normal)
      $0.sizeToFit()
      $0.center = CGPoint(x: self.view.center.x, y: self.view.frame.height - 50.0)
      $0.setTitleColor(UIColor.blue, for: .normal)
      
      $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
      self.view.addSubview($0)
    }
  }

  @objc func buttonTapped(_ sender: UIButton) {
    print("Logo button tapped.")
    
    guard let navigationController = navigationController else {
      return
    }
    navigationController.popViewController(animated: true)
  }

}
