//
//  StyleAndLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit
//MARK: - Selector
extension LoginViewController {
    static var loginButtonViewModel = LoginButtonViewModel()
    static var becomeAmemberButtonViewModel = BecomeMemberButtonViewModel()
    @objc func handleTextField(_ sender: UITextField) {
        if sender == LoginViewController.emailTextField {
            LoginViewController.loginButtonViewModel.emailText = sender.text
            LoginViewController.becomeAmemberButtonViewModel.emailText = sender.text
        }else {
            LoginViewController.loginButtonViewModel.passwordText = sender.text
            LoginViewController.becomeAmemberButtonViewModel.passwordText = sender.text
        }
        loginButtonStatus()
        becomeMemberStatus()
    }
}


extension LoginViewController {
    private func loginButtonStatus() {
        if LoginViewController.loginButtonViewModel.status {
            LoginViewController.loginButton.isEnabled = true
            LoginViewController.loginButton.backgroundColor = .systemBlue
            LoginViewController.signUpButton.isEnabled = false
           LoginViewController.signUpButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
    
        }else {
            LoginViewController.loginButton.isEnabled = false
            LoginViewController.loginButton.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            LoginViewController.signUpButton.isEnabled = true
            LoginViewController.signUpButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
           
        }
    }
    
    private func becomeMemberStatus() {
        
        if LoginViewController.becomeAmemberButtonViewModel.status {
           
        }else {
            
        }
        
    }
    
    func style() {
    
       backgroundGradiendColor()
       
       LoginViewController.logoImageView.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.emailContainerView.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.loginButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.label.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.logoImageView.layer.cornerRadius = 150 / 2 // radius kodu.
        LoginViewController.emailTextField.addTarget(self, action: #selector(handleTextField), for: UIControl.Event.editingChanged)
        LoginViewController.passwordTextField.addTarget(self, action: #selector(handleTextField), for: UIControl.Event.editingChanged)

   }
    func layout() {
        view.addSubview(LoginViewController.logoImageView)
        view.addSubview(LoginViewController.emailContainerView)
        view.addSubview(LoginViewController.passwordContainerView)
        view.addSubview(LoginViewController.loginButton)
        view.addSubview(LoginViewController.signUpButton)
        view.addSubview(LoginViewController.label)
   
        
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
            
            //MARK: - PasswordContainer Constrant
            
            LoginViewController.passwordContainerView.topAnchor.constraint(equalTo: LoginViewController.emailContainerView.bottomAnchor,constant: 8),
            LoginViewController.passwordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.passwordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.passwordContainerView.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Login Button Constrant
            
             LoginViewController.loginButton.topAnchor.constraint(equalTo: LoginViewController.passwordContainerView.bottomAnchor,constant: 15),
            LoginViewController.loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            LoginViewController.loginButton.heightAnchor.constraint(equalToConstant: 40),
            LoginViewController.loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            LoginViewController.loginButton.widthAnchor.constraint(equalToConstant: 120),
            
            //MARK: - SignUp Button Constrant
            
            LoginViewController.signUpButton.topAnchor.constraint(equalTo: LoginViewController.loginButton.bottomAnchor,constant: 15),
            LoginViewController.signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 123),
            
            LoginViewController.signUpButton.heightAnchor.constraint(equalToConstant: 40),
            // LoginViewController.signUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           LoginViewController.signUpButton.widthAnchor.constraint(equalToConstant: 150),
            
            //MARK: - Label Constrant
            
            LoginViewController.label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            LoginViewController.label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300),
            LoginViewController.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            LoginViewController.label.leadingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
   
    }
  
}
