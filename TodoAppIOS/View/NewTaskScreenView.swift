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
}


