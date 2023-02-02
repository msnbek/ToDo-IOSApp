//
//  MainStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit


extension MainTabBarViewController {
    //MARK: - Selectors
    @objc func addButtonClicked() {
        
    let controller = NewTaskViewController()
        if let sheet = controller.sheetPresentationController {
            sheet.detents = [.medium() ]
        }
        self.present(controller, animated: true)
    }
    
    
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
    
    
    func layout() {
        
        TasksViewController.addButton.addTarget(self, action: #selector(addButtonClicked), for: UIControl.Event.touchUpInside)
        
        
        TasksViewController.addButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(TasksViewController.addButton)
        
        
        NSLayoutConstraint.activate([
            
           
        
        
            //MARK: - AddButton Constraint Layout
            
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: TasksViewController.addButton.bottomAnchor, constant: 80),
            view.trailingAnchor.constraint(equalTo: TasksViewController.addButton.trailingAnchor, constant: 15),
            TasksViewController.addButton.widthAnchor.constraint(equalToConstant: 60),
            TasksViewController.addButton.heightAnchor.constraint(equalToConstant: 60)
        
        
        ])
        
        
        
    }
    
}
