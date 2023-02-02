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
}


