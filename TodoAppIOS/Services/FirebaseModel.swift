//
//  File.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage


    struct SignUpModelFirebase {
        
        let emailText : String
        let passwordText : String
        let nameText : String
        let usernameText : String
        let profileImage : UIImage
       
    }
    
   struct FirebaseServices {
       
       
       static func createUser(user : SignUpModelFirebase, completion: @escaping(Error?) -> Void) {
       
           let storage  = Storage.storage()
           let storageReference = storage.reference()
           let mediaFolder = storageReference.child("Profile Image")
           
           if let data = user.profileImage.jpegData(compressionQuality: 0.5) {
               
               let uuidImg = UUID().uuidString
           
               let imageReference = mediaFolder.child("\(uuidImg)")
               imageReference.putData(data) { storageMetaData, error in
                   
                   if let error = error {
                       
                       print(error.localizedDescription)
                   }else {
                       imageReference.downloadURL { url, error in
                           if let error = error {
                               print(error.localizedDescription)
                           }else {
                               guard let imageURL = url?.absoluteString else {return}
                               print(imageURL)
                               Auth.auth().createUser(withEmail: user.emailText, password: user.passwordText) { data, error in
                                   
                                   guard let uid = data?.user.uid else {return}
                                   
                                  let data = [
                                   
                                   "email" : user.emailText,
                                   "username" : user.usernameText,
                                   "name" : user.nameText,
                                   "profileImageUrl" : imageURL,
                                   "uid" : uid
    
                                  ] as [String : Any]
                                   let firestoreDatabase =  Firestore.firestore()
                                   firestoreDatabase.collection("Users").document(uid).setData(data,completion: completion)
                                   
                               }
                           }
                           
                       }
                   }
               }
               
           }
          
       
       }
     
    }





