//
//  TasksViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 2.02.2023.
//

import UIKit
import FirebaseAuth

class TasksViewController: UIViewController {
    //MARK: - Properties
    
    
     var user : User? {
        didSet {
            configure()
           
        }
    
    }
    
   
    
      // public var tasks = [Tasks]()
   
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        layout()
     
        TasksViewController.collectionView.delegate = self
        TasksViewController.collectionView.dataSource = self
       
    }
    
    //MARK: - Helpers
    
    private func fetchTasks() {
        guard let uid = self.user?.uid else {return}
        print(uid)
        fetchTasks { task in
            TasksViewController.tasks = task
            TasksViewController.collectionView.reloadData()
        }
    } 
    private func configure() {
        guard let user = self.user else {return}
        TasksViewController.nameLabel.text = "Hi \(user.name)👋🏻"
        fetchTasks()
    }
    
  
    
    
    
   
    

    

}
