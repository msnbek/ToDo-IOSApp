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
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(emailTextField)
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dividerView)
        
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
            emailTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            dividerView.topAnchor.constraint(equalTo: containerView.bottomAnchor,constant: 3),
            dividerView.heightAnchor.constraint(equalToConstant:0.7 ),
            dividerView.widthAnchor.constraint(equalToConstant: 370),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
            
             
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
            
            //MARK: - Password TextField Constraint
            
            passwordTextField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            passwordTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            passwordTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            
            dividerView.topAnchor.constraint(equalTo: containerView.bottomAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.widthAnchor.constraint(equalToConstant: 370),
            dividerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
            
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
      //  let attributedTitle = NSMutableAttributedString(string: "Click To Become Member", attributes: [.foregroundColor : UIColor.white, .font : UIFont.boldSystemFont(ofSize: 14)])
       // button.setAttributedTitle(attributedTitle, for: UIControl.State.normal)
        button.setTitle("Click To Become Member", for: UIControl.State.normal)
       button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.isEnabled = true
     //   button.setTitleColor(.white, for: .normal)
    //  button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
    //  button.layer.cornerRadius = 7
        

    
        return button
        
    }()
    //MARK: - LoginButton
   static let loginButton : UIButton = {
       
       let button = UIButton(type: .system)
       button.setTitle("Log In", for: UIControl.State.normal)
       button.setTitleColor(.white, for: .normal)
       button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
       button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
       button.layer.cornerRadius = 7
       button.isEnabled = false
       return button
    }()
    
    static var label : UILabel = {
        
        let label = UILabel()
        label.text = "Doey"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.largeTitle, compatibleWith: UITraitCollection?.none)
      
        
        return label
    }()
}



