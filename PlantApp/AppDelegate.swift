//
//  AppDelegate.swift
//  PlantApp
//
//  Created by Eldorbek on 05/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
<<<<<<< HEAD
        window?.rootViewController = OnboardingViewController()
=======

        if UserDefaults.standard.bool(forKey: "IS_USER_LOGIN") {
            let controller = TabbarController()
            window?.rootViewController = controller
        } else {
            let navigationController = UINavigationController(rootViewController: OnboardingViewController())
            window?.rootViewController = navigationController
        }
>>>>>>> 8e68f56348331b119fe13bb6a49c737a797b7524

        return true
    }
}

