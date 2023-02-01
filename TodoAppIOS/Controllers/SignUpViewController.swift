//
//  RegisterViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage

class SignUpViewController: UIViewController {
    
//MARK: - Properties
    
     var profileImage : UIImage?
//MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
      //  LoginViewController.signUpScreenSignUpButton.isEnabled = true
        
    }

 
}

//MARK: - Helpers


extension SignUpViewController {
    
    @objc func uploadFirebase() {
        
        guard let emailText = SignUpViewController.signUpEmailTextField.text else {return}
        guard let passwordText = SignUpViewController.signUpPasswordTextField.text else {return}
        guard let nameText = SignUpViewController.signUpNameTextField.text else {return}
        guard let usernameText = SignUpViewController.signUpUsernameTextField.text else {return}
        guard let profileImage = self.profileImage else {return}
        
        let user =  SignUpModelFirebase(emailText: emailText, passwordText: passwordText, nameText: nameText, usernameText: usernameText, profileImage: profileImage)
        FirebaseServices.createUser(user: user) { error in
            if let error = error {
                
                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let action = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
                alert.addAction(action)
                self.present(alert, animated: true)
                
                
                
            }
            
        }
        
        
    }
}
