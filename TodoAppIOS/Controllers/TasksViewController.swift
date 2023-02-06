//
//  TasksViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 2.02.2023.
//

import UIKit
import FirebaseAuth

class TasksViewController: UIViewController {
    
    private var user : User? {
        didSet {
            configure()
        }
    }
   

    override func viewDidLoad() {
        
        super.viewDidLoad()
        layout()
        fetchUser()
        TasksViewController.collectionView.delegate = self
        TasksViewController.collectionView.dataSource = self
       
    }
    
    private func configure() {
        guard let user = self.user else {return}
        TasksViewController.nameLabel.text = "Hi \(user.name)👋🏻"
    }
    private func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return}
        fetchUser(uid: uid) { user in
            self.user = user
        }
    }
    

    

}
