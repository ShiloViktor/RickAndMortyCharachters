//
//  AppDelegate.swift
//  RickAndMortyAPI
//
//  Created by Виктор on 19.03.2020.
//  Copyright © 2020 Виктор. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let tvc = TableViewController()
        let navController = UINavigationController(rootViewController: tvc)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        
        return true
    }



}

