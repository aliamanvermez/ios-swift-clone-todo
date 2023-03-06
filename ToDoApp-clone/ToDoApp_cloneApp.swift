//
//  ToDoApp_cloneApp.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 3.03.2023.
//

import SwiftUI

@main
struct ToDoApp_cloneApp: App {
    
    @EnvironmentObject var myCategories : CategoryViewModel
    
    var body: some Scene {
        
        
        WindowGroup {
            /*ContentView()
             .environment(\.managedObjectContext, persistenceController.container.viewContext)
             */
            //EmptyStateView()
            ToDoList().environmentObject(CategoryViewModel())
        }
    }
    


//    func decider(data : CategoryViewModel) -> some View {
//
//            for i in 0...13{
//                if(data.categories[i].counter > 0){
//                    return ToDoList().environmentObject(CategoryViewModel())
//                    break
//                }
//            }
//
//            return EmptyStateView()
//        }
    }

