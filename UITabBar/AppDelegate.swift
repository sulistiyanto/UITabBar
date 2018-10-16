//
//  AppDelegate.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import UIKit
import ReSwift

var store = Store<AppState>(reducer: appReducer, state: nil)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = UINavigationController(rootViewController: TabBarViewController())
        window.makeKeyAndVisible()
        appRouter = AppRouter(window: window)
        return true
    }

}

