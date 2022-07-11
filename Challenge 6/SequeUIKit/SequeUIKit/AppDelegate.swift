//
//  AppDelegate.swift
//  SequeUIKit
//
//  Created by Mike Melko on 6/27/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  var navigationController: UINavigationController?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let mainViewController = MainViewController()
    mainViewController.view.backgroundColor = .white
    
    let navigationController = UINavigationController()
    navigationController.pushViewController(
      mainViewController, animated: true)
    
    window = UIWindow()
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    
    return true
  }
}
