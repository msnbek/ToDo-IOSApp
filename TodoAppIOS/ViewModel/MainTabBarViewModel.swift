//
//  MainStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit


extension MainTabBarViewController {



    func style() {
        
        //MARK: - MainTabBar Created
        
           view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
       
           let pastTaskViewController = UINavigationController(rootViewController: PastTaskViewController())
           let taskViewController = UINavigationController(rootViewController: TasksViewController())
           let profileViewController = UINavigationController(rootViewController: ProfileViewController())
           
           
           pastTaskViewController.tabBarItem.image = UIImage(systemName: "bookmark.slash.fill")
           taskViewController.tabBarItem.image = UIImage(systemName: "bookmark.fill")
           profileViewController.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
           
           pastTaskViewController.title = "Past Tasks"
           taskViewController.title = "Tasks"
           profileViewController.title = "Profile"
           
           self.tabBar.tintColor = .black
           self.tabBar.itemPositioning = .fill

           setViewControllers([pastTaskViewController,taskViewController,profileViewController], animated: true)
        
        
        //MARK: - MainTabBar Configure
        
          let shape = CAShapeLayer()
        let bezier = UIBezierPath(roundedRect: CGRect(x: 10, y: (self.tabBar.bounds.minY-14), width: (self.tabBar.bounds.width) - 20, height: (self.tabBar.bounds.height) + 28), cornerRadius: ((self.tabBar.bounds.height) + 28) / 3)
        shape.path = bezier.cgPath
        shape.fillColor = UIColor.white.cgColor
        self.tabBar.itemWidth = (self.tabBar.bounds.width - 20) / 3
        self.tabBar.layer.insertSublayer(shape, at: 0)
        selectedIndex = 1
        
     
    }
    
 
    
    
   
    
}
