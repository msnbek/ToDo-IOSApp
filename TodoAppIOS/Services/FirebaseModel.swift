//
//  File.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage

extension UIViewController {
    
    //MARK: - Login Button Function Firebase
    
    @objc func loginButtonClicked() {
        
        guard let emailText = LoginViewController.emailTextField.text else {return}
        guard let passwordText = LoginViewController.passwordTextField.text else {return}
        self.showHUD(show: true)
        Auth.auth().signIn(withEmail: emailText, password: passwordText) { data, error in
            if let err = error {
                self.showHUD(show: false)
                self.makeAlert(titleInput: "Error", messageInput: err.localizedDescription)
                
            }else {
                self.showHUD(show: true)
                self.segue(viewController: MainTabBarViewController(), modalTranstitionStyle: .crossDissolve)
            }
        }
        
    }
    
    //MARK: - Login Button Function Firebase
    
    @objc func registerButtonClicked() {
        
        guard let emailText = SignUpViewController.signUpEmailTextField.text else {return}
        guard let passwordText = SignUpViewController.signUpPasswordTextField.text else {return}
        guard let nameText = SignUpViewController.signUpNameTextField.text else {return}
        guard let usernameText = SignUpViewController.signUpUsernameTextField.text else {return}
        showHUD(show: true)
                
        if SignUpViewController.cameraButton.currentImage != UIImage(systemName: "camera.circle") {
                    
                    let storage = Storage.storage()
                    let storageReference = storage.reference()
                    
                    let mediaFolder = storageReference.child("media")
                    
                    if let data = SignUpViewController.cameraButton.currentImage?.jpegData(compressionQuality: 0.5) {
                        let uuid = UUID().uuidString
                        
                        let imgReference = mediaFolder.child("\(uuid).jpg")
                        imgReference.putData(data) { storageMetaData, error in
                            if let err = error {
                                print(err.localizedDescription)
                            }else {
                                imgReference.downloadURL { url, error in
                                    if error == nil {
                                        
                                        Auth.auth().createUser(withEmail: emailText, password: passwordText) { authData, error in
                                            
                                            if let err = error {
                                                
                                                let alert = UIAlertController(title: "Error", message: err.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                                                let action = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default){ [self] (UIAlertAction) in
                                                    self.showHUD(show: false)
                                                    
                                                }
                                                alert.addAction(action)
                                                self.present(alert, animated: true)
                                                
                                            }else {
                                                self.showHUD(show: true)
                                                self.segue(viewController: MainTabBarViewController(), modalTranstitionStyle: .crossDissolve)
                                            }
                                        }
                                        
                                        guard let imageURL = url?.absoluteString else {return}
                                          
                                        
                                        let fireStoreDatabase = Firestore.firestore()
                                        var _ : DocumentReference? = nil
                                        guard let  currentUserUid = Auth.auth().currentUser?.uid else {return}
                                
                                        let user = [
                                        
                                            "email" : emailText,
                                            "username": usernameText,
                                            "name": nameText,
                                            "imageUrl" : imageURL,
                                            "uid": currentUserUid
                                            
                                        ]
    
                                        fireStoreDatabase.collection("users").document(currentUserUid).setData(user, merge:  true)
                        
                                        
                                    }
                                    
                                }
                            }
                        }
                       
                    }
  
                }else {
                    
                 makeAlert(titleInput: "Ok", messageInput: "Please Selecet Profile Picture")
                    
                }
    
    }
    
    
    
    
    
    
    
}





