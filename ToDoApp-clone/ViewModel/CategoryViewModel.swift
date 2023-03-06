//
//  Controller.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 4.03.2023.
//

import Foundation

class CategoryViewModel :  ObservableObject{
    
    @Published var categories : [CategoryModel] = [
        CategoryModel(categoryName: "All"),
        CategoryModel(categoryName: "Cooking"),
        CategoryModel(categoryName: "Finance"),
        CategoryModel(categoryName: "Gift"),
        CategoryModel(categoryName: "Health"),
        CategoryModel(categoryName: "Home"),
        CategoryModel(categoryName: "Ideas"),
        CategoryModel(categoryName: "Music"),
        CategoryModel(categoryName: "Others"),
        CategoryModel(categoryName: "Payment"),
        CategoryModel(categoryName: "Shopping"),
        CategoryModel(categoryName: "Study"),
        CategoryModel(categoryName: "Travel"),
        CategoryModel(categoryName: "Work")]
    
    public func getAllCategories() -> [CategoryModel]{
        return self.categories
    }
    
}
