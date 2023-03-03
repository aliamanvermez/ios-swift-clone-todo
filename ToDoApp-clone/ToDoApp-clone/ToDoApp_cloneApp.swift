//
//  ToDoApp_cloneApp.swift
//  ToDoApp-clone
//
//  Created by Ali Amanvermez on 3.03.2023.
//

import SwiftUI

@main
struct ToDoApp_cloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
