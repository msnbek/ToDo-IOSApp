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
    
 
}

