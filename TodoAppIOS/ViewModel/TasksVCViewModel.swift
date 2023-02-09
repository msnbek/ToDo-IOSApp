//
//  TasksViewModel.swift
//  TodoAppIOS
//
//  Created by Mahmut Senbek on 3.02.2023.
//

import UIKit
import FirebaseAuth



extension TasksViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    static let  reuseIdentifier = "TasksCell"
    
    static var tasks = [Task]()
    
  
    //MARK: - Helpers
    
   
    
    
    //MARK: - UICollectionViews Model
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return TasksViewController.tasks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TasksViewController.reuseIdentifier, for: indexPath) as! TasksViewCell
        cell.task = TasksViewController.tasks[indexPath.row]
       
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TasksViewController.reuseIdentifier, for: indexPath) as! TasksViewCell
        let alert = UIAlertController(title: "Choose Your Action", message: "", preferredStyle: UIAlertController.Style.alert)
        let deleteButton = UIAlertAction(title: "Delete", style: UIAlertAction.Style.default) {  (UIAlertAction) in
            TasksViewController.tasks.remove(at: indexPath.row)
            collectionView.deleteItems(at: [indexPath])
            guard let task = cell.task else {return}
            self.deleteTask(task: task )
        }
        let editButton = UIAlertAction(title: "Edit", style: UIAlertAction.Style.default)
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default)
       
        self.present(alert, animated: true)
        alert.addAction(deleteButton)
        alert.addAction(editButton)
        alert.addAction(cancelButton)
        
       
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
       // navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.prefersLargeTitles = true
        TasksViewController.addButton.addTarget(self, action: #selector(addButtonClicked), for: UIControl.Event.touchUpInside)
        
        TasksViewController.addButton.translatesAutoresizingMaskIntoConstraints = false
        TasksViewController.collectionView.translatesAutoresizingMaskIntoConstraints = false
        TasksViewController.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TasksViewController.collectionView)
        view.addSubview(TasksViewController.addButton)
        view.addSubview(TasksViewController.nameLabel)
       
        
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
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: TasksViewController.collectionView.bottomAnchor, constant: 14),
            
            
            //MARK: - Name Label Constraint Layout
            
            TasksViewController.nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            TasksViewController.nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ])
        
    }
    
}
