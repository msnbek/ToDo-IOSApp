//
//  NewTaskScreenView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit

extension NewTaskViewController {
    
    static let newTaskLabel : UILabel = {
       
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.attributedText = NSMutableAttributedString(string: "New Task", attributes: [.foregroundColor : UIColor.white, .font : UIFont.preferredFont(forTextStyle: UIFont.TextStyle.largeTitle)])
        return label
        
    }()
    
     static let textView : InputTextView = {
       
        let textView = InputTextView()
         textView.placeHolder = "Enter new task."
         textView.backgroundColor = .white
         textView.layer.cornerRadius = 60 / 8
        textView.layer.borderColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
         textView.layer.borderWidth = 2
         textView.font = UIFont.systemFont(ofSize: 18)
         
         return textView
        
    }()
    
    static let addTaskButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Add", for: UIControl.State.normal)
        button.configuration = .tinted()
        button.configuration?.cornerStyle = .medium
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.6180379942, green: 0.7647058964, blue: 0.2574318954, alpha: 1)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size:12)
        
        return button
        
        
    }()
    
    static let cancelButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Cancel", for: UIControl.State.normal)
        button.configuration = .tinted()
        button.configuration?.cornerStyle = .medium
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size:12)
        
        return button
        
        
    }()
    
}


