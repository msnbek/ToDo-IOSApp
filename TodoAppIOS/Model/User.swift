//
//  User.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 4.02.2023.
//

import Foundation


struct User {
    
    
        let email: String
        let name: String
        let profileImageUrl: String
        let uid: String
        let username: String
        init(data: [String: Any]) {
            self.email = data["email"] as? String ?? ""
            self.name = data["name"] as? String ?? ""
            self.profileImageUrl = data["profileImageUrl"] as? String ?? ""
            self.uid = data["uid"] as? String ?? ""
            self.username = data["username"] as? String ?? ""
        }
    
    
}
