//
//  Extension.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

extension UIViewController {
    
    func backgroundGradiendColor() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemCyan.cgColor, UIColor.systemMint.cgColor]
        gradient.locations = [0,1]  // yukarıdan aşağıya.
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
    }
    func labelGradientColor() {
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemYellow.cgColor, UIColor.systemRed.cgColor]
        gradient.locations = [0,1]
        gradient.frame = LoginViewController.label.bounds
        LoginViewController.label.layer.addSublayer(gradient)
        
        
    }
    
    
}
