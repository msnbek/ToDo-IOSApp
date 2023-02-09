//
//  TasksViewCell.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 4.02.2023.
//

import UIKit

class TasksViewCell: UICollectionViewCell {
    
    //MARK: - Properteis
   public var task : Task?{
        didSet {
            configure()
        }
    }
    
    private let checkButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "circle"), for: UIControl.State.normal)
       button.backgroundColor = .clear
        button.tintColor = .black
        return button
        
    }()
    
    private let textLabel : UILabel = {
       let label = UILabel()
        label.text = "Buy apple."
        label.numberOfLines = 0
        return label
    }()
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}

//MARK: - Helpers
extension TasksViewCell {
    
    func configure() {
        guard let task = self.task else {return}
        textLabel.text = task.text
        
    }

    //MARK: - Selectors
    
    
   
    @objc private func checkButtonClicked(_ sender: UIButton) {
        if checkButton.currentImage == UIImage(systemName: "circle") {
            
            UIView.animate(withDuration: 0.5, delay: 0) {
                self.checkButton.alpha = 0
            } completion: { _ in
                UIView.animate(withDuration: 0.5, delay: 0) {
                    self.checkButton.setImage(UIImage(systemName: "checkmark.circle"), for: UIControl.State.normal)
                    self.checkButton.alpha = 1
                }
            }
        }else if checkButton.currentImage == UIImage(systemName: "checkmark.circle") {
            UIView.animate(withDuration: 0.5, delay: 0) {
                self.checkButton.alpha = 0
            } completion: { _ in
                UIView.animate(withDuration: 0.5, delay: 0) {
                    self.checkButton.setImage(UIImage(systemName: "circle"), for: UIControl.State.normal)
                    self.checkButton.alpha = 1
               }
            }
             
        }
        
   
        
    }
    
    
    private func style() {
        
        backgroundColor = .white
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.black.withAlphaComponent(0.6).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowOpacity = 5
        
        checkButton.addTarget(self, action: #selector(checkButtonClicked), for: UIControl.Event.touchUpInside)
    }
    

    
    private func layout() {
        addSubview(checkButton)
        addSubview(textLabel)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
             //MARK: - CheckButton Layout Constraint
            
            checkButton.topAnchor.constraint(equalTo: topAnchor,constant: 10),
            checkButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkButton.heightAnchor.constraint(equalToConstant: 30),
            checkButton.widthAnchor.constraint(equalToConstant: 30),
            
            //MARK: - TextLabel Layout Constraint
            
            textLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 1),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -3)
            
        ])
    }
    
}
