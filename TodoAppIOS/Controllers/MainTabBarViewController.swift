//
//  MainViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit
import FirebaseAuth

class MainTabBarViewController: UITabBarController {
    
    //MARK: - Properties
    
    let pastTaskViewController = UINavigationController(rootViewController: PastTaskViewController())
    let taskViewController = TasksViewController()
    let profileViewController = UINavigationController(rootViewController: ProfileViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
       style()
      // layout()
      fetchUser()
     
        
        

    }
    
    //MARK: - Helpers
    

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
    
  
    private func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return}
        fetchUser(uid: uid) { user in
            self.taskViewController.user = user
            print(user)
        }
    }
    
  
 
    

  

}
