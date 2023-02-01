//
//  SegueModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit

extension UIViewController {
    
    
   public func segueWithHorizontal(viewController : UIViewController) {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.modalTransitionStyle = .flipHorizontal
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true, completion: nil)
    }
    
    public func segueWithCrossDissolve(viewController :UIViewController) {
        let navController = UINavigationController(rootViewController: viewController)
        navController.modalTransitionStyle = .crossDissolve
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true, completion: nil)
    }
    
}
