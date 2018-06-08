//
//  AppDelegate.swift
//  GemSelection
//
//  Created by Abhishek on 25/10/17.
//  Copyright © 2017 atlas. All rights reserved.
//

import UIKit
import DropDown
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.barTintColor = UIColor(red: 208/255.0, green: 162/255.0, blue: 96/255.0, alpha: 1.0)
        navigationBarAppearace.isTranslucent = true
        DropDown.startListeningToKeyboard()
        FirebaseApp.configure()
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

