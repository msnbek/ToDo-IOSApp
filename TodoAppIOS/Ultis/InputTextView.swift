//
//  InputTextView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit
class InputTextView: UITextView {
    //MARK: - Properties
    
    var placeHolder : String? {
        didSet{
            self.inputPlaceHolder.text = placeHolder
            
        }
    }
    
    private let inputPlaceHolder : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .lightGray
        return label
    }()
    //MARK: - Lifecycle
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - Helpers

extension InputTextView {
    
 private func style() {
     
addSubview(inputPlaceHolder)
     
    }
    
    
    private func layout() {
        
        inputPlaceHolder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            inputPlaceHolder.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            inputPlaceHolder.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)
        ])
    }
    
}
