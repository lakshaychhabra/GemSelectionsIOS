//
//  AppDelegate.swift
//  GemSelection
//
//  Created by ITS on 6/29/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.barTintColor = UIColor(red: 208/255.0, green: 162/255.0, blue: 96/255.0, alpha: 1.0)
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.isTranslucent = true
        return true 
    }

    func applicationWillResignActive(_ application: UIApplication) {
  
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
           }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

