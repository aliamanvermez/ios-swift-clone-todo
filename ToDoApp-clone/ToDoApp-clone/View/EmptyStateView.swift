//
//  EmptyStateView.swift
//  ToDoApp-clone
//
//  Created by Ali Amanvermez on 3.03.2023.
//

import SwiftUI

struct EmptyStateView: View {
    @State var isNewTaskViewOn = false
    var body: some View {
        
        

       
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            self.isNewTaskViewOn = true
                        }, label: {
                            Text("+")
                                .font(.system(.largeTitle))
                                .frame(width: 57, height: 50)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 7)
                        })
                        .background(Color.indigo)
                        .cornerRadius(38.5)
                        .padding()
                        .shadow(color: Color.black.opacity(0.3),
                                radius: 3,
                                x: 3,
                                y: 3)
                        .fullScreenCover(isPresented: self.$isNewTaskViewOn, content: {
                            NewTaskView()
                        })
                    }.padding()
                }
            } .navigationTitle("To Do")
           
        }
        
        
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
