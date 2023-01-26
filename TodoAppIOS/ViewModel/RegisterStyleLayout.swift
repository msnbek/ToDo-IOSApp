//
//  RegisterStyleLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit
//MARK: - Selectors Func
extension SignUpStyleLayout {
    
    //MARK: - Back Button Clicked Func
    @objc func backbuttonClicked() {
     segueWithHorizontal(viewController: LoginViewController())
        print("tapped")
    }
}

extension SignUpStyleLayout {
    
    
    func style() {
        registerGradientBackgroundColor()
        LoginViewController.backButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.backButton.addTarget(self, action: #selector(backbuttonClicked), for: UIControl.Event.touchUpInside)
        LoginViewController.cameraButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.uploadLabel.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpEmailContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpNameContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpUsernameContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpPasswordContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpLoginButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        
        view.addSubview(LoginViewController.backButton)
        view.addSubview(LoginViewController.cameraButton)
        view.addSubview(LoginViewController.uploadLabel)
        view.addSubview(LoginViewController.signUpEmailContainerView)
        view.addSubview(LoginViewController.signUpNameContainerView)
        view.addSubview(LoginViewController.signUpUsernameContainerView)
        view.addSubview(LoginViewController.signUpPasswordContainerView)
        view.addSubview(LoginViewController.signUpLoginButton)
      
        NSLayoutConstraint.activate([
            
            //MARK: - BackButton Constraint
            
            SignUpStyleLayout.backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
            SignUpStyleLayout.backButton.heightAnchor.constraint(equalToConstant: 25),
            SignUpStyleLayout.backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            
            //MARK: - Logo Image View Constraint
            
            SignUpStyleLayout.cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpStyleLayout.cameraButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 16),
            SignUpStyleLayout.cameraButton.heightAnchor.constraint(equalToConstant: 150),
            SignUpStyleLayout.cameraButton.widthAnchor.constraint(equalToConstant: 150),
            
            //MARK: - Label
            
            LoginViewController.uploadLabel.topAnchor.constraint(equalTo: SignUpStyleLayout.cameraButton.bottomAnchor, constant: 15),
            LoginViewController.uploadLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LoginViewController.uploadLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LoginViewController.uploadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        //MARK: - Email Container View
            
            LoginViewController.signUpEmailContainerView.topAnchor.constraint(equalTo: LoginViewController.uploadLabel.bottomAnchor, constant: 10),
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
            
            //MARK: - SignUp Login Button
            
            LoginViewController.signUpLoginButton.topAnchor.constraint(equalTo: LoginViewController.signUpPasswordContainerView.bottomAnchor, constant: 15),
            LoginViewController.signUpLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LoginViewController.signUpLoginButton.heightAnchor.constraint(equalToConstant: 60),
            LoginViewController.signUpLoginButton.widthAnchor.constraint(equalToConstant: 180),
            
        ])
     
        
        
    }
    
}
