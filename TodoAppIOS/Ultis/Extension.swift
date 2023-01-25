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
    
}
