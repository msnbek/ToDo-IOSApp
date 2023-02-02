//
//  NewTaskScreenView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit


extension NewTaskViewController {
    
    //MARK: - Selectors
    
    @objc func handleTextView() {
        NewTaskViewController.textView.placeHolder = ""
        
    }
    
    func style() {
        
        view.addSubview(NewTaskViewController.newTaskLabel)
        view.addSubview(NewTaskViewController.textView)
        
    }
    
    
    func layout() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextView), name: UITextView.textDidChangeNotification, object: nil)
        
        NewTaskViewController.newTaskLabel.translatesAutoresizingMaskIntoConstraints = false
        NewTaskViewController.textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            //MARK: - New Task Label Constraint
        
            NewTaskViewController.newTaskLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: NewTaskViewController.newTaskLabel.trailingAnchor,constant: 32),
            NewTaskViewController.newTaskLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 32),
            
            //MARK: - Input Text View Constraint
            
            NewTaskViewController.textView.topAnchor.constraint(equalTo: NewTaskViewController.newTaskLabel.bottomAnchor, constant: 8),
            NewTaskViewController.textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            view.trailingAnchor.constraint(equalTo: NewTaskViewController.textView.trailingAnchor, constant: 32),
            NewTaskViewController.textView.heightAnchor.constraint(equalToConstant: 160)
            
        
        ])
        
        
    }
    
}
