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
    
    @objc func cancelButtonClicked() {
        self.dismiss(animated: true)
    }
    
    //MARK: - Style Func
    
     func style() {
        
        view.addSubview(NewTaskViewController.newTaskLabel)
        view.addSubview(NewTaskViewController.textView)
        view.addSubview(NewTaskViewController.addTaskButton)
        view.addSubview(NewTaskViewController.cancelButton)
        
    }
    
    //MARK: - Layout Func
    
     func layout() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextView), name: UITextView.textDidChangeNotification, object: nil)
        
        NewTaskViewController.newTaskLabel.translatesAutoresizingMaskIntoConstraints = false
        NewTaskViewController.textView.translatesAutoresizingMaskIntoConstraints = false
        NewTaskViewController.addTaskButton.translatesAutoresizingMaskIntoConstraints = false
        NewTaskViewController.cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        NewTaskViewController.cancelButton.addTarget(self, action: #selector(cancelButtonClicked), for: UIControl.Event.touchUpInside)
        NewTaskViewController.addTaskButton.addTarget(self, action: #selector(addTaskButtonClicked), for: UIControl.Event.touchUpInside)
        
        NSLayoutConstraint.activate([
            
            //MARK: - New Task Label Constraint
        
            NewTaskViewController.newTaskLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: NewTaskViewController.newTaskLabel.trailingAnchor,constant: 32),
            NewTaskViewController.newTaskLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 32),
            
            //MARK: - Input Text View Constraint
            
            NewTaskViewController.textView.topAnchor.constraint(equalTo: NewTaskViewController.newTaskLabel.bottomAnchor, constant: 25),
            NewTaskViewController.textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            view.trailingAnchor.constraint(equalTo: NewTaskViewController.textView.trailingAnchor, constant: 32),
            NewTaskViewController.textView.heightAnchor.constraint(equalToConstant: 180),
            
            //MARK: - Add Task Button Constraint
            
            NewTaskViewController.addTaskButton.topAnchor.constraint(equalTo: NewTaskViewController.textView.bottomAnchor,constant: 16),
            NewTaskViewController.addTaskButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            NewTaskViewController.addTaskButton.widthAnchor.constraint(equalToConstant: 150),
            NewTaskViewController.addTaskButton.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Cancel Button Constraint
            
            NewTaskViewController.cancelButton.topAnchor.constraint(equalTo: NewTaskViewController.textView.bottomAnchor,constant: 16),
            NewTaskViewController.cancelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            NewTaskViewController.cancelButton.widthAnchor.constraint(equalToConstant: 150),
            NewTaskViewController.cancelButton.heightAnchor.constraint(equalToConstant: 60)
            
        
        ])
        
        
    }
    
}
