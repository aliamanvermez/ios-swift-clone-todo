//
//  TaskModel.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 5.03.2023.
//

import Foundation

class TaskModel : Identifiable, ObservableObject {
    var id : UUID
    var textFieldText : String
    var date : Date
    var note : String
    var taskCategory : CategoryModel
    
    init(id: UUID, textFieldText: String, date: Date, note: String, taskCategory: CategoryModel) {
        self.id = id
        self.textFieldText = textFieldText
        self.date = date
        self.note = note
        self.taskCategory = taskCategory
    }
    
    
    func getCategory() -> (String) {
        return self.taskCategory.categoryName
    }
    
    func getCategoryCounter() -> (Int) {
        return self.taskCategory.counter
    }
    
    
}

