//
//  AppDelegate.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/20/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let viewController = SearchScreenInstance.viewController()
        let navigationController = UINavigationController(rootViewController: viewController)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

