//
//  AppDelegate.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/12.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController: UITabBarController?
   
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let screenBounds = UIScreen.main.bounds
        self.window = UIWindow(frame: screenBounds)
        self.window?.backgroundColor = .white
        
        tabBarController = UITabBarController()
        tabBarController?.tabBar.tintColor = UIColor.red
    
        let tab1Con =  UINavigationController.init(rootViewController: HomeViewController())
        let tab2Con =  UINavigationController.init(rootViewController: DiscoverViewController())
        let tab3Con =  UINavigationController.init(rootViewController: PersonalViewController())
     

        tabBarController?.viewControllers = [tab1Con, tab2Con, tab3Con]
        tabBarController?.selectedIndex = 0
        tabBarController?.tabBar.tintColor = UIColor.black
        tabBarController?.tabBar.barTintColor = UIColor.white
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

