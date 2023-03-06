//
//  CategoryModel.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 4.03.2023.
//

import Foundation

class CategoryModel : Identifiable, ObservableObject{
    
    var id : UUID
    var categoryName : String
    var categoryPicName : String = ""
    var counter : Int = 0
    static var allCounter : Int = 0
    
    init(categoryName: String) {
        self.id = UUID()
        self.categoryName = categoryName
        self.categoryPicName = "task_" + categoryName.lowercased()
    }
    
    public func increaseCounter(){
        self.counter += 1
    }
    
}
