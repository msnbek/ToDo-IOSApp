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



extension UIViewController {
    
    //MARK: - Login Button Function Firebase
    
    @objc func loginButtonClicked() {
        
        guard let emailText = LoginViewController.emailTextField.text else {return}
        guard let passwordText = LoginViewController.passwordTextField.text else {return}
        self.showHUD(show: true)
        Auth.auth().signIn(withEmail: emailText, password: passwordText) { data, error in
            if let err = error {
                self.showHUD(show: false)
                self.makeAlert(titleInput: "Error", messageInput: err.localizedDescription)
                
            }else {
                self.showHUD(show: true)
                self.segue(viewController: MainTabBarViewController(), modalTranstitionStyle: .crossDissolve)
            }
        }
        
    }
    
    //MARK: - Login Button Function Firebase
    
    @objc func registerButtonClicked() {
       
        guard let emailText = SignUpViewController.signUpEmailTextField.text else {return}
        guard let passwordText = SignUpViewController.signUpPasswordTextField.text else {return}
        guard let nameText = SignUpViewController.signUpNameTextField.text else {return}
        guard let usernameText = SignUpViewController.signUpUsernameTextField.text else {return}
        showHUD(show: true)
        
        if SignUpViewController.cameraButton.currentImage != UIImage(systemName: "camera.circle") {
            
            let storage = Storage.storage()
            let storageReference = storage.reference()
            
            let mediaFolder = storageReference.child("media")
            
            if let data = SignUpViewController.cameraButton.currentImage?.jpegData(compressionQuality: 0.5) {
                let uuid = UUID().uuidString
                
                let imgReference = mediaFolder.child("\(uuid).jpg")
                imgReference.putData(data) { storageMetaData, error in
                    if let err = error {
                        print(err.localizedDescription)
                    }else {
                        imgReference.downloadURL { url, error in
                            if error == nil {
                                
                                Auth.auth().createUser(withEmail: emailText, password: passwordText) { authData, error in
                                    
                                    if let err = error {
                                        
                                        let alert = UIAlertController(title: "Error", message: err.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                                        let action = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default){ [self] (UIAlertAction) in
                                            self.showHUD(show: false)
                                            
                                        }
                                        alert.addAction(action)
                                        self.present(alert, animated: true)
                                        
                                    }else {
                                        self.showHUD(show: true)
                                        self.segue(viewController: MainTabBarViewController(), modalTranstitionStyle: .crossDissolve)
                                    }
                                }
                                
                                guard let imageURL = url?.absoluteString else {return}
                                
                                
                                let fireStoreDatabase = Firestore.firestore()
                                var _ : DocumentReference? = nil
                                guard let  currentUserUid = Auth.auth().currentUser?.uid else {return}
                                
                                let user = [
                                    
                                    "email" : emailText,
                                    "username": usernameText,
                                    "name": nameText,
                                    "imageUrl" : imageURL,
                                    "uid": currentUserUid
                                    
                                ]
                                
                                fireStoreDatabase.collection("users").document(currentUserUid).setData(user, merge:  true)
                                
                                
                            }
                            
                        }
                    }
                }
                
            }
            
        }else {
            
            makeAlert(titleInput: "Ok", messageInput: "Please Selecet Profile Picture")
            
        }
        
    }
    
    //MARK: - Adding new tasks to Firebase
    
    @objc func addTaskButtonClicked() {
        
        guard let currentUid = Auth.auth().currentUser?.uid else {return}
        guard let text = NewTaskViewController.textView.text else {return}
        let taskId = NSUUID().uuidString
        let data = [
            "text" : text,
            "timestamp" : Timestamp(date: Date()),
            "taskId" : taskId,
        ] as [String : Any]
        Firestore.firestore().collection("tasks").document(currentUid).collection("ongoing_tasks").document(taskId).setData(data)
     //   NewTaskViewController.textView.text = ""
        
        
        
    }
    
    //MARK: - Fetch User From Firebase
    
     func fetchUser(uid: String, completion: @escaping(User)-> Void){
         Firestore.firestore().collection("users").document(uid).getDocument { snapshot, error in
            guard let data = snapshot?.data() else{ return }
             let user = User(data: data)
            completion(user)
        }
        
    }
    //MARK: - Fetch Tasks From Firebase
    func fetchTasks(completion : @escaping([Task])-> Void) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        var tasks = [Task]()
        Firestore.firestore().collection("tasks").document(uid).collection("ongoing_tasks").order(by: "timestamp").addSnapshotListener { snapshot, error in
            snapshot?.documentChanges.forEach({ value in
                if value.type == .added {
                    let data = value.document.data()
                    tasks.append(Task(data: data))
                    completion(tasks)
                    print(tasks)
                }
              
            })
        }
        
        
    }
    
    func deleteTask(task: Task) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let data  = [
            "text" : task.text,
            "taskId" : task.tasksID,
            "timestamp" : Timestamp(date : Date())
        ] as [String : Any]
        
        Firestore.firestore().collection("tasks").document(uid).collection("completed_tasks").document(task.tasksID).setData(data) { error in
            if let err = error {
                print(err)
                return
            }else {
                Firestore.firestore().collection("tasks").document(uid).collection("ongoing_tasks").document(task.tasksID).delete()
            }
        }
    }
    
    
    
    
    
}
