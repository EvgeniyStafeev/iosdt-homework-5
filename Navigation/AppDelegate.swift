//
//  AppDelegate.swift
//  Navigation
//
//  Created by Евгений Стафеев on 01.11.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let tabBar = UITabBarController()
        
        var profileNC = UINavigationController()
        var feedNC = UINavigationController()
        
        
        let profileVC = ProfileViewController()
        let feedVC = FeedViewController()
        
        let loginVC = LogInViewController()
        
        let photosVC = PhotosViewController()
        
        
        profileVC.title = "Profile"
        feedVC.title = "Feed"
        feedVC.view.backgroundColor = .blue
        
        photosVC.title = "Photo Gallery"
        
        profileNC = UINavigationController(rootViewController: loginVC)
        feedNC = UINavigationController(rootViewController: feedVC)
        
        
        profileNC.tabBarItem = .init(title: "Profile", image: UIImage(systemName: "person"), tag: 0)
        feedNC.tabBarItem = .init(title: "Feed", image: UIImage(named: "list.bullet.circle"), tag: 1)
        
        
        
        tabBar.viewControllers = [profileNC, feedNC]

        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
        
        return true
        
    }

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



