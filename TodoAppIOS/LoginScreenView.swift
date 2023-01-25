//
//  Views.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

extension UIViewController {
  static  let logoImageView : UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        imageView.image = UIImage(systemName: "checkmark.message") // image'a system'dan fotoğraf yerlestirdik.
        imageView.tintColor = .white // image'ın tint rengini değiştirdik.
        return imageView
        
    }()
    
    static var emailContainerView : UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .black
        
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
    
    static let emailTextField : UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.textColor = .white
        return textField
        
    }()
}

