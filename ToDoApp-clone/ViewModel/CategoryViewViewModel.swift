//
//  CategoryViewViewModel.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 5.03.2023.
//

import Foundation

var allCategories : [CategoryModel] = CategoryViewModel().categories

class TaskViewViewModel : ObservableObject{
    
    @Published var tasks : [TaskModel] = [
        TaskModel(id: UUID(), textFieldText: "Test", date: Date(), note: "not 1", taskCategory:allCategories[0])
        
    ]
}


