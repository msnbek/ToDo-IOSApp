//
//  RegisterScreenView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit

extension UIViewController {
    

    
    
    //MARK: - CameraButton
    
    static let cameraButton : UIButton = {
       
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "camera.circle"), for: UIControl.State.normal)
        button.contentMode = .scaleToFill
        button.clipsToBounds = true
        button.tintColor = .white
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
       
        return button
        
    }()
    
    //MARK: - UploadLabel
    
    static let uploadLabel : UILabel = {
       
        let label = UILabel()
        label.text = "Tap For Upload a Profile Picture"
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
        
    }()
    
    
    static var signUpEmailContainerView : UIView = {
       
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "envelope")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        
        containerView.addSubview(signUpEmailTextField)
        signUpEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
        
            //MARK: - Email Image Constraint
            
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: - SignUp Email Image Constraint
            
            signUpEmailTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            signUpEmailTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            signUpEmailTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signUpEmailTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
         
            //MARK: - Email Divider View
            
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: 340),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15)
            
          
        
        ])
        
        return containerView
        
        
    }()
    
    
    //MARK: - EmailTextField
    static let signUpEmailTextField : UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.textColor = .white
        textField.borderStyle = .none
        textField.autocapitalizationType = .none
        return textField
        
    }()
    
    static var signUpNameContainerView : UIView = {
       
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "person")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        
        containerView.addSubview(signUpNameTextField)
        signUpNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
        
            //MARK: - Name Image Constraint
            
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: - Name Image Constraint
            
            signUpNameTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            signUpNameTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            signUpNameTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signUpNameTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
         
            //MARK: - Name Divider View
            
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: 340),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15)
            
          
        
        ])
        
        return containerView
        
        
    }()
    //MARK: - NameTextField
    static let signUpNameTextField : UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Name"
        textField.textColor = .white
        textField.borderStyle = .none
        return textField
        
    }()
    
    
    static var signUpUsernameContainerView : UIView = {
       
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "person.circle")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        
        containerView.addSubview(signUpUsernameTextField)
        signUpUsernameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
        
            //MARK: - Username Image Constraint
            
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: -  Username Image Constraint
            
            signUpUsernameTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            signUpUsernameTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            signUpUsernameTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signUpUsernameTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
         
            //MARK: - Username Divider View
            
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: 340),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15)
            
          
        
        ])
        
        return containerView
        
        
    }()
    //MARK: - UsernameTextField
    static let signUpUsernameTextField : UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.textColor = .white
        textField.borderStyle = .none
        return textField
        
    }()
    
    
    static var signUpPasswordContainerView : UIView = {
       
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "square.and.pencil")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(imageView)
        
        containerView.addSubview(signUpPasswordTextField)
        signUpPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
        
            //MARK: - Password Image Constraint
            
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 26),
            imageView.widthAnchor.constraint(equalToConstant: 26),
            
            //MARK: - Password Image Constraint
            
            signUpPasswordTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            signUpPasswordTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            signUpPasswordTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signUpPasswordTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
         
            //MARK: - Password Divider View
            
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: 340),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15)
            
          
        
        ])
        
        return containerView
        
        
    }()
    //MARK: - NameTextField
    static let signUpPasswordTextField : UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textColor = .white
        textField.borderStyle = .none
        textField.isSecureTextEntry = true
        textField.textContentType = .oneTimeCode
        return textField
        
    }()
    
    
    static let signUpScreenSignUpButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Sign Up", for: UIControl.State.normal)
       // button.isEnabled = true
        button.tintColor = UIColor.white
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 7
        button.isEnabled = false
        
        return button
    }()
    
    //MARK: - Back To Login Page Button
    
    static let backToLoginPageButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("If you are a member, click for back to login page", for: UIControl.State.normal)
        button.setTitleColor( .systemIndigo , for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 13)
        return button
        
    }()
    
    
}
