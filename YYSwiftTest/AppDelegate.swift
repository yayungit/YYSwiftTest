//
//  AppDelegate.swift
//  YYSwiftTest
//
//  Created by 何亚运 on 16/10/10.
//  Copyright © 2016年 YYStar. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        Fabric.with([Crashlytics.self])// MARK: 第一天
        // TODO: 第一天
        // FIXME: 第一天
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let vc1 = RootViewController()
        let vc2 = ViewController()
        
        let naVC1 = UINavigationController.init(rootViewController: vc1)
        let naVC2 = UINavigationController.init(rootViewController: vc2)
        let tabbar = UITabBarController.init()
        tabbar.viewControllers = [naVC1,naVC2]
        naVC1.tabBarItem = UITabBarItem.init(title: "first", image: nil, selectedImage: nil)
        naVC2.tabBarItem = UITabBarItem.init(title: "second", image: nil, selectedImage: nil)
        window?.rootViewController = tabbar
        window?.makeKeyAndVisible()
        
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

