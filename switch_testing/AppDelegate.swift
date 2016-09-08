//
//  AppDelegate.swift
//  switch_testing
//
//  Created by Beau Carrillo on 9/8/16.
//  Copyright © 2016 Beau Carrillo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow()
        self.window!.rootViewController = ViewController()
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
    
}


