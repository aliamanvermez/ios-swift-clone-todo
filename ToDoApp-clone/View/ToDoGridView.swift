//
//  ToDoGridView.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 4.03.2023.
//

import SwiftUI

struct ToDoGridView: View {
    
    var categoryName : String
    var categoryPicName : String
    var counter : Int
    
    
    
    var body: some View {
        
        
        ZStack{
            
            Rectangle()
                .colorInvert()
                .frame(width: 175, height: 150, alignment: .center)
                .cornerRadius(20)
            
            VStack{
                Image(categoryPicName)
                
                    Text(categoryName).font(.title2)
                    Text("\(counter) Tasks")
                
            }
            
        }
    }
    
    struct ToDoGridView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoGridView(categoryName: "Cooking", categoryPicName: "task_cooking", counter: 50)
        }
    }
}
