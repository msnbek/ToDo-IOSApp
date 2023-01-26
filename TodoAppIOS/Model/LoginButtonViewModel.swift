//
//  LoginViewModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 26.01.2023.
//

import UIKit

struct LoginButtonViewModel {
    
    var emailText : String?
    var passwordText : String?
    
    var status : Bool {
        return emailText?.isEmpty == false && passwordText?.isEmpty == false
    }

}

struct BecomeMemberButtonViewModel {
    
    var emailText : String?
    var passwordText : String?
    
    var status: Bool {
        
        return emailText?.isEmpty == false && passwordText?.isEmpty == false
    }
    
}
