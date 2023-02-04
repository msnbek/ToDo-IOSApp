//
//  MainViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit
import FirebaseAuth

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       style()
      // layout()
        
     
        
        

    }
    

    private func userStatus() {
        
        if Auth.auth().currentUser?.uid == nil {
            print("No user")
            let controller = UINavigationController(rootViewController: LoginViewController())
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true)
        }else {
            print("user exist")
          
        }
    }
    
    private func signOut() {
        do {
            try Auth.auth().signOut()
           userStatus()
        }catch {
            print(error.localizedDescription)
        }
       
    }
    
  
 
    

  

}
