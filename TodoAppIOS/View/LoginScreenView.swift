//
//  Views.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

extension UIViewController {
    
    //MARK: - LogoImageView
    static  let logoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        imageView.image = UIImage(systemName: "checkmark.message") // image'a system'dan fotoğraf yerlestirdik.
        imageView.tintColor = .white // image'ın tint rengini değiştirdik.
        return imageView
        
    }()
    //MARK: - EmailContainer
    static var emailContainerView : UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "envelope")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        containerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //MARK: - Email Logo Constraint
            
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: - EmailTextFieldConstraint
            
            emailTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            emailTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            emailTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            emailTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ])
        
        return containerView
    }()
    //MARK: - EmailTextField
    static let emailTextField : UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.textColor = .white
        textField.borderStyle = .none
        return textField
        
    }()
    //MARK: - PasswordContainerView
    static var passwordContainerView : UIView = {
        
        let containerView = UIView()
        containerView.backgroundColor = .clear
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "square.and.pencil")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        containerView.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
        
            //MARK: - Password Image Constraint
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: - Password TextField Constraint
            
            passwordTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            passwordTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            passwordTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
            
        ])
     
        return containerView
        
        
    }()
    //MARK: - Password TextField
    static let passwordTextField : UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.textColor = .white
        textField.borderStyle = .none
        return textField
                
    }()
    //MARK: - Sign Up Button
    static let signUpButton : UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: UIControl.State.normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
        button.layer.cornerRadius = 7

    
        return button
        
    }()
    //MARK: - LoginButton
   static let loginButton : UIButton = {
       
       let button = UIButton(type: .system)
       button.setTitle("Log In", for: UIControl.State.normal)
       button.setTitleColor(.white, for: .normal)
       button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
       button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
       button.layer.cornerRadius = 7
       return button
    }()
    
    
}



