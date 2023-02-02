//
//  NewTaskScreenView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit


extension NewTaskViewController {
    
    func style() {
        
        view.addSubview(NewTaskViewController.newTaskLabel)
        
    }
    
    
    func layout() {
        
        NewTaskViewController.newTaskLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            NewTaskViewController.newTaskLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: NewTaskViewController.newTaskLabel.trailingAnchor,constant: 32),
            NewTaskViewController.newTaskLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 32)
            
        
        ])
        
        
    }
    
}
