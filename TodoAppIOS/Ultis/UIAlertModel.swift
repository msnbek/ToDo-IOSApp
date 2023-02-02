//
//  UIAlertModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 2.02.2023.
//

import UIKit
extension UIViewController {
    
    
    func makeAlert(titleInput : String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
}


