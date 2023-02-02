//
//  RegisterStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit
import FirebaseStorage
import FirebaseAuth
import FirebaseFirestore

//MARK: - Choosin image with Button.

extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @objc func imageButtonTapped() {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[.originalImage] as? UIImage
        self.profileImage = image
        SignUpViewController.cameraButton.setImage(image?.withRenderingMode(.alwaysOriginal) , for: UIControl.State.normal)
        self.dismiss(animated: true, completion: nil)
        SignUpViewController.cameraButton.layer.cornerRadius = 75
        SignUpViewController.cameraButton.layer.borderColor = UIColor.white.cgColor
        SignUpViewController.cameraButton.layer.borderWidth = 4
   
    }
 
}

//MARK: - Selectors Func
extension SignUpViewController {
    
    
    //MARK: - Properties
    
    static var loginButtonViewModel = SignUpSignInButtonViewModel()
   
    //MARK: - Back Button Clicked Func
    
    @objc func backbuttonClicked() {
        segue(viewController: LoginViewController(), modalTranstitionStyle: .flipHorizontal)
        print("tapped")
    }
    @objc func signUpButtonClicked() {
        segue(viewController: MainViewController(), modalTranstitionStyle: .crossDissolve)
    }
    
  
    //MARK: - TextField Editin Func
    
    @objc func textFieldEditing(_ sender: UITextField) {
        
        if sender == LoginViewController.signUpEmailTextField {
            LoginViewController.loginButtonViewModel.emailText = sender.text
        } else if sender == LoginViewController.signUpPasswordTextField {
            LoginViewController.loginButtonViewModel.name = sender.text
        } else if sender == LoginViewController.signUpNameTextField {
            LoginViewController.loginButtonViewModel.username = sender.text
        } else if sender == LoginViewController.signUpUsernameTextField {
            LoginViewController.loginButtonViewModel.passwordText = sender.text
        }
        signUpButtonStatus()

    }
 
    private func signUpButtonStatus() {
        
        if LoginViewController.loginButtonViewModel.statusSignUpScreenLoginButton {
            
            LoginViewController.signUpScreenSignUpButton.isEnabled = true
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }else {
            LoginViewController.signUpScreenSignUpButton.isEnabled = false
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
        
    }
     
}

extension SignUpViewController {
  
    func style() {
        
        gradientBackgroundColor(firstColor: UIColor.systemMint.cgColor, secondColor: UIColor.white.cgColor)
        
        
        SignUpViewController.backToLoginPageButton.addTarget(self, action: #selector(backbuttonClicked), for: UIControl.Event.touchUpInside)
        SignUpViewController.signUpEmailTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        SignUpViewController.signUpNameTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        SignUpViewController.signUpUsernameTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        SignUpViewController.signUpPasswordTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        SignUpViewController.cameraButton.addTarget(self, action: #selector(imageButtonTapped), for: UIControl.Event.touchUpInside)
        SignUpViewController.signUpScreenSignUpButton.addTarget(self, action: #selector(registerButtonClicked), for: UIControl.Event.touchUpInside)
       // SignUpViewController.signUpScreenSignUpButton.addTarget(self, action:  #selector(signUpButtonClicked), for: UIControl.Event.touchUpInside)
        
        
        SignUpViewController.cameraButton.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.uploadLabel.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.signUpEmailContainerView.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.signUpNameContainerView.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.signUpUsernameContainerView.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.signUpPasswordContainerView.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.signUpScreenSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        SignUpViewController.backToLoginPageButton.translatesAutoresizingMaskIntoConstraints = false
  
        
        
        //MARK: - GestureRecongnizer for Keyboard.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hiddenKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
    
    }
    
    //MARK: - Subviews and Layouts
    
    func layout() {
        
        view.addSubview(SignUpViewController.cameraButton)
        view.addSubview(SignUpViewController.uploadLabel)
        view.addSubview(SignUpViewController.signUpEmailContainerView)
        view.addSubview(SignUpViewController.signUpNameContainerView)
        view.addSubview(SignUpViewController.signUpUsernameContainerView)
        view.addSubview(SignUpViewController.signUpPasswordContainerView)
        view.addSubview(SignUpViewController.signUpScreenSignUpButton)
        view.addSubview(SignUpViewController.backToLoginPageButton)
      
        NSLayoutConstraint.activate([
            
            
            //MARK: - Logo Image View Constraint
            
            SignUpViewController.cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpViewController.cameraButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 16),
            SignUpViewController.cameraButton.heightAnchor.constraint(equalToConstant: 150),
            SignUpViewController.cameraButton.widthAnchor.constraint(equalToConstant: 150),
            
            //MARK: - Label Constraint
            
            SignUpViewController.uploadLabel.topAnchor.constraint(equalTo: SignUpViewController.cameraButton.bottomAnchor, constant: 25),
            SignUpViewController.uploadLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            SignUpViewController.uploadLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            SignUpViewController.uploadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        //MARK: - Email Container View Constraint
             
            SignUpViewController.signUpEmailContainerView.topAnchor.constraint(equalTo: SignUpViewController.uploadLabel.bottomAnchor, constant: 50),
            SignUpViewController.signUpEmailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            SignUpViewController.signUpEmailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            SignUpViewController.signUpEmailContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Name Container View Constraint
            
            SignUpViewController.signUpNameContainerView.topAnchor.constraint(equalTo: SignUpViewController.signUpEmailContainerView.bottomAnchor, constant: 10),
            SignUpViewController.signUpNameContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            SignUpViewController.signUpNameContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            SignUpViewController.signUpNameContainerView.heightAnchor.constraint(equalToConstant: 60),
            
       //MARK: - Username Container View Constraint
            
            SignUpViewController.signUpUsernameContainerView.topAnchor.constraint(equalTo: SignUpViewController.signUpNameContainerView.bottomAnchor, constant: 10),
            SignUpViewController.signUpUsernameContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            SignUpViewController.signUpUsernameContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            SignUpViewController.signUpUsernameContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Password Container View Constraint
            
            SignUpViewController.signUpPasswordContainerView.topAnchor.constraint(equalTo: SignUpViewController.signUpUsernameContainerView.bottomAnchor, constant: 10),
            SignUpViewController.signUpPasswordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            SignUpViewController.signUpPasswordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            SignUpViewController.signUpPasswordContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - SignUp Sign In Button Constraint
            
            SignUpViewController.signUpScreenSignUpButton.topAnchor.constraint(equalTo: SignUpViewController.signUpPasswordContainerView.bottomAnchor, constant: 15),
            SignUpViewController.signUpScreenSignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpViewController.signUpScreenSignUpButton.heightAnchor.constraint(equalToConstant: 60),
            SignUpViewController.signUpScreenSignUpButton.widthAnchor.constraint(equalToConstant: 180),
            
            
            SignUpViewController.backToLoginPageButton.topAnchor.constraint(equalTo: SignUpViewController.signUpScreenSignUpButton.bottomAnchor,constant: 15),
            SignUpViewController.backToLoginPageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 123),
            SignUpViewController.backToLoginPageButton.heightAnchor.constraint(equalToConstant: 40),
            SignUpViewController.backToLoginPageButton.widthAnchor.constraint(equalToConstant: 150),
            
        ])
     
        
        
    }
    
}
