//
//  NewTaskView.swift
//  ToDoApp-clone
//
//  Created by Ali Amanvermez on 3.03.2023.
//

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var inputPlan = ""
    var body: some View {
        
        NavigationView() {
            ZStack {
                VStack{
                    TextField("What are you planning?", text: $inputPlan)
                        .textFieldStyle(UnderlinedTextFieldStyle())
           
                }
            }
                .navigationTitle("New Task")
                .toolbar{
                    Button(action:{
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
