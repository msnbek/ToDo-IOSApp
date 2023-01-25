//
//  StyleAndLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit


extension LoginViewController {
    func style() {
     
       backgroundGradiendColor()
       LoginViewController.logoImageView.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.emailContainerView.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.loginButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.logoImageView.layer.cornerRadius = 150 / 2 // radius kodu.

   }
    func layout() {
        view.addSubview(LoginViewController.logoImageView)
        view.addSubview(LoginViewController.emailContainerView)
        view.addSubview(LoginViewController.passwordContainerView)
        view.addSubview(LoginViewController.loginButton)
       view.addSubview(LoginViewController.signUpButton)
   
        
        NSLayoutConstraint.activate([
            
            //MARK: - LogoImageView Constrant
            
            LoginViewController.logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            LoginViewController.logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LoginViewController.logoImageView.widthAnchor.constraint(equalToConstant: 150),
            LoginViewController.logoImageView.heightAnchor.constraint(equalToConstant: 150),
            
            //MARK: - EmailContainer Constrant
            
            LoginViewController.emailContainerView.topAnchor.constraint(equalTo: LoginViewController.logoImageView.bottomAnchor, constant: 32),
            LoginViewController.emailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.emailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 8),
            LoginViewController.emailContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Password Container
            
            LoginViewController.passwordContainerView.topAnchor.constraint(equalTo: LoginViewController.emailContainerView.bottomAnchor,constant: 8),
            LoginViewController.passwordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.passwordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.passwordContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Login Button
            
             LoginViewController.loginButton.topAnchor.constraint(equalTo: LoginViewController.passwordContainerView.bottomAnchor,constant: 8),
            LoginViewController.loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            LoginViewController.loginButton.heightAnchor.constraint(equalToConstant: 40),
            LoginViewController.loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            LoginViewController.loginButton.widthAnchor.constraint(equalToConstant: 120),
            
            //MARK: - SignUp Button
            LoginViewController.signUpButton.topAnchor.constraint(equalTo: LoginViewController.loginButton.bottomAnchor,constant: 15),
            LoginViewController.signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            LoginViewController.signUpButton.heightAnchor.constraint(equalToConstant: 40),
            // LoginViewController.signUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           LoginViewController.signUpButton.widthAnchor.constraint(equalToConstant: 120)
        ])
   
    }
  
}