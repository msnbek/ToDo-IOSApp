//
//  LoginViewModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit

extension UIViewController {
    
    struct SignUpSignInButtonViewModel {
        
        var emailText : String?
        var passwordText : String?
        var username : String?
        var name: String?
        
        
        var statusLoginScreenLoginButton : Bool {
            return emailText?.isEmpty == false && passwordText?.isEmpty == false
        }
        
        var statusSignUpScreenLoginButton : Bool {
            
            return emailText?.isEmpty == false && passwordText?.isEmpty == false && username?.isEmpty == false && name?.isEmpty == false
        }

    }
}




