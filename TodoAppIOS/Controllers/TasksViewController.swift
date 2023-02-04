//
//  TasksViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 2.02.2023.
//

import UIKit

class TasksViewController: UIViewController {
   

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        TasksViewController.collectionView.delegate = self
        TasksViewController.collectionView.dataSource = self
       
    }
    

    

}
