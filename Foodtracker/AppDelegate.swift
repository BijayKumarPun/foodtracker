//
//  AppDelegate.swift
//  Foodtracker
//
//  Created by Bijay Kumar Pun on 5/20/20.
//  Copyright © 2020 Home. All rights reserved.
//

/**
 The AppDelegate.swift has two prmary functions:
- Creates the window where the app's content is drawn
- Careates entry point to the app, and run loop that delivers input events to the app, done by the @UIApplicationMain attribute
 */


import UIKit

@UIApplicationMain
// Using this attribute is equivalent to calling UIAPplicationMain function and passing
// AppDelegate class's name as the name of the delegate class. In response, the system creates an application object, which is responsible
// for managing the life cycle of the app
// Link ; //https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI
// .html#//apple_ref/doc/uid/TP40015214-CH5-SW1
class AppDelegate: UIResponder, UIApplicationDelegate {


    // Stub implementation
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
        //stub implementation
    }


}



