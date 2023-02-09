//
//  Tasks.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 6.02.2023.
//

import UIKit
import FirebaseFirestore

struct Task {
    
    let tasksID : String
    let text : String
    let timestamp : Timestamp
    
    init(data : [String : Any]) {
        self.tasksID = data["taskId"] as? String ?? ""
        self.text = data["text"] as? String ?? ""
        self.timestamp = data["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
    
    
}
