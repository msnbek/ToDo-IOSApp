//
//  TasksViewModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit

extension TasksViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    static let  reuseIdentifier = "TasksCell"
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TasksViewController.reuseIdentifier, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 180, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: 10, height: 10)
    }
    
    
    //MARK: - Selectors
    @objc func addButtonClicked() {
        
    let controller = NewTaskViewController()
        if let sheet = controller.sheetPresentationController {
            sheet.detents = [.medium() ]
        }
        self.present(controller, animated: true)
    }
 
    
    //MARK: - Layout Func.
    
    func layout() {
        title = "Tasks"
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        TasksViewController.addButton.addTarget(self, action: #selector(addButtonClicked), for: UIControl.Event.touchUpInside)
        
        TasksViewController.addButton.translatesAutoresizingMaskIntoConstraints = false
        TasksViewController.collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TasksViewController.collectionView)
        view.addSubview(TasksViewController.addButton)
       
        
        NSLayoutConstraint.activate([
       
            //MARK: - AddButton Constraint Layout
            
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: TasksViewController.addButton.bottomAnchor, constant: 80),
            view.trailingAnchor.constraint(equalTo: TasksViewController.addButton.trailingAnchor, constant: 15),
            TasksViewController.addButton.widthAnchor.constraint(equalToConstant: 60),
            TasksViewController.addButton.heightAnchor.constraint(equalToConstant: 60),
            
            //MARK: - Collection View Constraint Layout
            
            TasksViewController.collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
            TasksViewController.collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            view.trailingAnchor.constraint(equalTo: TasksViewController.collectionView.trailingAnchor,constant: 10),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: TasksViewController.collectionView.bottomAnchor, constant: 14)
        ])
        
    }
    
}
