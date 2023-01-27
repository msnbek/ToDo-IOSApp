//
//  RegisterStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit
//MARK: - Selectors Func
extension SignUpViewController {
    static var loginButtonViewModel = LoginButtonViewModel()
    //MARK: - Back Button Clicked Func
    @objc func backbuttonClicked() {
     segueWithHorizontal(viewController: LoginViewController())
        print("tapped")
    }
    
    //MARK: - Keyboard Hidden Func.
    @objc func hiddenKeyboard() {
        
        view.endEditing(true)
    }
    
   
    
    //MARK: - TextField Editin Func
    
    @objc func textFieldHandle(_ sender: UITextField) {
        
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
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.564852755, green: 0.936047019, blue: 0.9764705896, alpha: 1)
        }else {
            LoginViewController.signUpScreenSignUpButton.isEnabled = false
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
        
    }
     
}

extension SignUpViewController {
    
    func loginButtonEditingSingUpWC() {
        
        
        if LoginViewController.signUpEmailTextField.text != "" && LoginViewController.signUpNameTextField.text != "" && LoginViewController.signUpPasswordTextField.text != "" && LoginViewController.signUpUsernameTextField.text != ""  {
            
            LoginViewController.signUpScreenSignUpButton.isEnabled = true
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.564852755, green: 0.936047019, blue: 0.9764705896, alpha: 1)
        }else {
            LoginViewController.signUpScreenSignUpButton.isEnabled = false
            LoginViewController.signUpScreenSignUpButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
        
    }
     
    func style() {
        
        registerGradientBackgroundColor()
        LoginViewController.backToLoginPageButton.addTarget(self, action: #selector(backbuttonClicked), for: UIControl.Event.touchUpInside)
        LoginViewController.signUpEmailTextField.addTarget(self, action: #selector(textFieldHandle), for: UIControl.Event.editingChanged)
        LoginViewController.signUpNameTextField.addTarget(self, action: #selector(textFieldHandle), for: UIControl.Event.editingChanged)
        LoginViewController.signUpUsernameTextField.addTarget(self, action: #selector(textFieldHandle), for: UIControl.Event.editingChanged)
        LoginViewController.signUpPasswordTextField.addTarget(self, action: #selector(textFieldHandle), for: UIControl.Event.editingChanged)
        LoginViewController.cameraButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.uploadLabel.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpEmailContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpNameContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpUsernameContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpPasswordContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpScreenSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.backToLoginPageButton.translatesAutoresizingMaskIntoConstraints = false
  
        
        
        //MARK: - GestureRecongnizer for Keyboard.
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hiddenKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
    
    }
    
    //MARK: - Subviews and Layouts
    
    func layout() {
        
        view.addSubview(LoginViewController.cameraButton)
        view.addSubview(LoginViewController.uploadLabel)
        view.addSubview(LoginViewController.signUpEmailContainerView)
        view.addSubview(LoginViewController.signUpNameContainerView)
        view.addSubview(LoginViewController.signUpUsernameContainerView)
        view.addSubview(LoginViewController.signUpPasswordContainerView)
        view.addSubview(LoginViewController.signUpScreenSignUpButton)
        view.addSubview(LoginViewController.backToLoginPageButton)
      
        NSLayoutConstraint.activate([
            
            
            //MARK: - Logo Image View Constraint
            
            SignUpViewController.cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpViewController.cameraButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 16),
            SignUpViewController.cameraButton.heightAnchor.constraint(equalToConstant: 150),
            SignUpViewController.cameraButton.widthAnchor.constraint(equalToConstant: 150),
            
            //MARK: - Label
            
            LoginViewController.uploadLabel.topAnchor.constraint(equalTo: SignUpViewController.cameraButton.bottomAnchor, constant: 25),
            LoginViewController.uploadLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LoginViewController.uploadLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LoginViewController.uploadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        //MARK: - Email Container View
            
            LoginViewController.signUpEmailContainerView.topAnchor.constraint(equalTo: LoginViewController.uploadLabel.bottomAnchor, constant: 50),
            LoginViewController.signUpEmailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.signUpEmailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.signUpEmailContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Name Container View
            LoginViewController.signUpNameContainerView.topAnchor.constraint(equalTo: LoginViewController.signUpEmailContainerView.bottomAnchor, constant: 10),
            LoginViewController.signUpNameContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.signUpNameContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.signUpNameContainerView.heightAnchor.constraint(equalToConstant: 60),
            
       //MARK: - Username Container View
            
            LoginViewController.signUpUsernameContainerView.topAnchor.constraint(equalTo: LoginViewController.signUpNameContainerView.bottomAnchor, constant: 10),
            LoginViewController.signUpUsernameContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.signUpUsernameContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.signUpUsernameContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Password Container View
            
            LoginViewController.signUpPasswordContainerView.topAnchor.constraint(equalTo: LoginViewController.signUpUsernameContainerView.bottomAnchor, constant: 10),
            LoginViewController.signUpPasswordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.signUpPasswordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.signUpPasswordContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - SignUp Sign In Button
            
            LoginViewController.signUpScreenSignUpButton.topAnchor.constraint(equalTo: LoginViewController.signUpPasswordContainerView.bottomAnchor, constant: 15),
            LoginViewController.signUpScreenSignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LoginViewController.signUpScreenSignUpButton.heightAnchor.constraint(equalToConstant: 60),
            LoginViewController.signUpScreenSignUpButton.widthAnchor.constraint(equalToConstant: 180),
            
            
            LoginViewController.backToLoginPageButton.topAnchor.constraint(equalTo: LoginViewController.signUpScreenSignUpButton.bottomAnchor,constant: 15),
            LoginViewController.backToLoginPageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 123),
            LoginViewController.backToLoginPageButton.heightAnchor.constraint(equalToConstant: 40),
           LoginViewController.backToLoginPageButton.widthAnchor.constraint(equalToConstant: 150),
            
        ])
     
        
        
    }
    
}
