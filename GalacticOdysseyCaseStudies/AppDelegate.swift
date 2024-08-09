//
//  AppDelegate.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window: UIWindow = UIWindow()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window.rootViewController = UINavigationController(rootViewController: HomeViewController())
        window.makeKeyAndVisible()
        return true
    }
}

