//
//  ViewController.swift
//  segmentedControlllerUIKit
//
//  Created by Mike Melko on 7/11/22.
//

import UIKit

enum SelectedColor: Int {
    case red = 0
    case green
    case blue
    case yellow
    case orange
    case purple
}

class ViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        let segmentedControl = UISegmentedControl (items: ["Red", "Green", "Blue", "Yellow", "Orange", "Purple"])
      
        [segmentedControl].forEach {
            $0.frame.size.width = self.view.frame.width - 20
            $0.frame.size.height = 30
            $0.center = self.view.center
              
            $0.selectedSegmentIndex = 0
            $0.selectedSegmentTintColor = UIColor.red
             
            $0.addTarget(self, action: #selector(self.updateSelection(_:)), for: .valueChanged)
            self.view.addSubview($0)
        }
    }
    
    @objc func updateSelection(_ sender: UISegmentedControl!)
    {
        switch sender.selectedSegmentIndex {
        case SelectedColor.green.rawValue:
            sender.selectedSegmentTintColor = UIColor.green
        case SelectedColor.blue.rawValue:
          sender.selectedSegmentTintColor = UIColor.blue
        case SelectedColor.yellow.rawValue:
            sender.selectedSegmentTintColor = UIColor.yellow
        case SelectedColor.orange.rawValue:
          sender.selectedSegmentTintColor = UIColor.orange
        case SelectedColor.purple.rawValue:
            sender.selectedSegmentTintColor = UIColor.purple
        default:
          sender.selectedSegmentTintColor = UIColor.red
        }        
    }
}
