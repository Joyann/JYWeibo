//
//  AppDelegate.swift
//  JYWeibo
//
//  Created by joyann on 16/1/11.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let tabVC = TabViewController()
        
        window = UIWindow(frame: SCREEN_BOUNDS)
        window!.rootViewController = tabVC
        window!.makeKeyAndVisible()
        
        return true
    }



}

