//
//  JGProgressHUD.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 1.02.2023.
//

import UIKit
import JGProgressHUD

extension  UIViewController {
    
    func showHUD(show : Bool) {
        view.endEditing(true)
        let hud = JGProgressHUD(style: .dark)
        hud.textLabel.text = "Loading"
        hud.detailTextLabel.text = "Please Wait"
        hud.dismiss(afterDelay: 1.5)
        
        if show {
            hud.show(in: view)
        }else {
            hud.dismiss(animated: true)
        }
        
    }
}

