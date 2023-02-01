//
//  StyleAndLayout.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit
//MARK: - Selector
extension LoginViewController {
    static var loginButtonViewModel = SignUpSignInButtonViewModel()
  
    
    //MARK: - TextField Editing Func
    @objc func textFieldEditing(_ sender: UITextField) {
        if sender == LoginViewController.emailTextField {
            
            LoginViewController.loginButtonViewModel.emailText = sender.text
        }else {
            
            LoginViewController.loginButtonViewModel.passwordText = sender.text
        }
        loginButtonStatus()
        
    }
    
    //MARK: - SingUp Button Clicked Func
    @objc func signUpButtonClicked() {
        
        segueWithHorizontal(viewController: SignUpViewController())
        
    }
}

//MARK: - Login and SignUp Button Changes Function.

extension LoginViewController {
    private func loginButtonStatus() {
        if LoginViewController.loginButtonViewModel.statusLoginScreenLoginButton {
            LoginViewController.loginButton.isEnabled = true
            LoginViewController.loginButton.backgroundColor = .systemBlue
            LoginViewController.signUpButton.isEnabled = false
            LoginViewController.signUpButton.setTitleColor(UIColor(cgColor: CGColor.init(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)), for: UIControl.State.normal)
    
        }else {
            LoginViewController.loginButton.isEnabled = false
            LoginViewController.loginButton.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            LoginViewController.signUpButton.isEnabled = true
            LoginViewController.signUpButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
           
        }
    }
    
 
    func style() {
    
       loginBackgroundGradiendColor()
       
       LoginViewController.logoImageViewLoginScreen.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.emailContainerView.translatesAutoresizingMaskIntoConstraints = false
       LoginViewController.passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.loginButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.label.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.logoImageViewLoginScreen.layer.cornerRadius = 150 / 2 // radius kodu.
        LoginViewController.emailTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        LoginViewController.passwordTextField.addTarget(self, action: #selector(textFieldEditing), for: UIControl.Event.editingChanged)
        LoginViewController.signUpButton.addTarget(self, action: #selector(signUpButtonClicked), for: UIControl.Event.touchUpInside)

   }
    func layout() {
        view.addSubview(LoginViewController.logoImageViewLoginScreen)
        view.addSubview(LoginViewController.emailContainerView)
        view.addSubview(LoginViewController.passwordContainerView)
        view.addSubview(LoginViewController.loginButton)
        view.addSubview(LoginViewController.signUpButton)
        view.addSubview(LoginViewController.label)
   
        
        NSLayoutConstraint.activate([
            
            //MARK: - LogoImageView Constrant
            
            LoginViewController.logoImageViewLoginScreen.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            LoginViewController.logoImageViewLoginScreen.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LoginViewController.logoImageViewLoginScreen.widthAnchor.constraint(equalToConstant: 150),
            LoginViewController.logoImageViewLoginScreen.heightAnchor.constraint(equalToConstant: 150),
            
            //MARK: - EmailContainer Constrant
            
            LoginViewController.emailContainerView.topAnchor.constraint(equalTo: LoginViewController.logoImageViewLoginScreen.bottomAnchor, constant: 32),
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
            LoginViewController.loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            LoginViewController.loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            LoginViewController.loginButton.heightAnchor.constraint(equalToConstant: 40),
            LoginViewController.loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            LoginViewController.loginButton.widthAnchor.constraint(equalToConstant: 120),
            
            //MARK: - SignUp Button Constrant
            
            LoginViewController.signUpButton.topAnchor.constraint(equalTo: LoginViewController.loginButton.bottomAnchor,constant: 15),
            LoginViewController.signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 123),
            
            LoginViewController.signUpButton.heightAnchor.constraint(equalToConstant: 40),
           
           LoginViewController.signUpButton.widthAnchor.constraint(equalToConstant: 150),
            
            //MARK: - Label Constrant
            
            LoginViewController.label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            LoginViewController.label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300),
            LoginViewController.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            LoginViewController.label.leadingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
   
    }
  
}
