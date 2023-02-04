//
//  MainScreenView.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 27.01.2023.
//

import UIKit


extension TasksViewController {
    
    static let addButton : UIButton = {
       
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "plus.diamond.fill"), for: .normal)
        button.tintColor = .black
        button.contentHorizontalAlignment = .fill
        button.contentVerticalAlignment = .fill
        return button
    }()
    
    static let collectionView : UICollectionView = {
       
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: TasksViewController.reuseIdentifier)
        collectionView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return collectionView
    }()
    
}
