//
//  MainStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit


extension MainTabBarViewController {
    
    
    func style() {
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
           let pastTaskViewController = UINavigationController(rootViewController: PastTaskViewController())
           let taskViewController = UINavigationController(rootViewController: TasksViewController())
           let profileViewController = UINavigationController(rootViewController: ProfileViewController())
           
           
           pastTaskViewController.tabBarItem.image = UIImage(systemName: "bookmark.slash.fill")
           taskViewController.tabBarItem.image = UIImage(systemName: "bookmark.fill")
           profileViewController.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
           
           pastTaskViewController.title = "Past Tasks"
           taskViewController.title = "Tasks"
           profileViewController.title = "Profile"
           
           tabBar.tintColor = .black

           setViewControllers([pastTaskViewController,taskViewController,profileViewController], animated: true)
        
           
        
    }
    
    
    func layout() {
        
        
        
    }
    
}
