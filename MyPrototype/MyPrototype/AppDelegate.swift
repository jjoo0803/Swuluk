//
//  AppDelegate.swift
//  MyPrototype
//
//  Created by dm16 on 2017. 12. 27..
//  Copyright © 2017년 mim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var selectedIndex: Int?
    
    var catList: [CatMap] = []
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //----- 임의의 정보를 전달
        // 랑이 우치 우동이 기독이 삼색이 정문이
        var cat: CatMap!
        cat = CatMap(title:"랑이", latitude:37.6291, longitude:127.0897, image : UIImage(named: "1")!)
        self.catList.append(cat)
        cat = CatMap(title: "우치", latitude:37.5894, longitude:127.0323, image : UIImage(named: "2")!)
        self.catList.append(cat)
        cat = CatMap(title: "우동", latitude:35.2332, longitude:129.0794, image : UIImage(named: "3")!)
        self.catList.append(cat)
        cat = CatMap(title: "기독이", latitude:42.36402, longitude:-71.12482, image : UIImage(named: "4")!)
        self.catList.append(cat)
        cat = CatMap(title: "삼색이", latitude:42.72401, longitude:-84.48137, image : UIImage(named: "5")!)
        self.catList.append(cat)
        cat = CatMap(title: "정문이", latitude:37.427297, longitude:-122.170372, image : UIImage(named: "1")!)
        self.catList.append(cat)

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

