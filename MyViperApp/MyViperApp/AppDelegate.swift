//
//  AppDelegate.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let controller1 = SingleRecipeAssembly.module()
		let controller2 = HomeAssembly.module()
		let UITab = UITabBarController()
		UITab.viewControllers = [controller1, controller2]
		UITab.selectedIndex = 0
		UITab.tabBar.tintColor = .black
		
//		let customTabBarItem:UITabBarItem = UITabBarItem(title: nil, image: UIImage(named: "home")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "home"))
//
//		controller1.tabBarItem = customTabBarItem

		window = UIWindow(frame: UIScreen.main.bounds)
//		window?.rootViewController = HomeAssembly.module()
		window?.rootViewController = UITab
//		window?.rootViewController = demoHomeViewController()
		window?.makeKeyAndVisible()
		
//		DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
//			self?.window?.rootViewController = ViewController()
//		}

		return true
	}
}

