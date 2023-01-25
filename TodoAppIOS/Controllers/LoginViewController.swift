//
//  ViewController.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
     style()
     layout()
        
    }


}

//MARK: - Helpers

extension LoginViewController {
    private func style() {
        view.backgroundColor = .red
        backgroundGradiendColor()
        LoginViewController.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        LoginViewController.logoImageView.layer.cornerRadius = 150 / 2 // radius kodu.
        LoginViewController.emailContainerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        view.addSubview(LoginViewController.logoImageView)
        view.addSubview(LoginViewController.emailContainerView)
        NSLayoutConstraint.activate([
            
            //MARK: - LogoImageView Constrant
            
            LoginViewController.logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            LoginViewController.logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LoginViewController.logoImageView.widthAnchor.constraint(equalToConstant: 150),
            LoginViewController.logoImageView.heightAnchor.constraint(equalToConstant: 150),
            
            //MARK: - EmailContainer Constrant
            
            LoginViewController.emailContainerView.topAnchor.constraint(equalTo: LoginViewController.logoImageView.bottomAnchor, constant: 8),
            LoginViewController.emailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            LoginViewController.emailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            LoginViewController.emailContainerView.heightAnchor.constraint(equalToConstant: 60)
        ])
   
    }
    
}

