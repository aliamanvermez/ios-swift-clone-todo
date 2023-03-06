//
//  ToDoList.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 4.03.2023.
//

import SwiftUI

struct ToDoList: View {
    @Environment(\.dismiss) var dissmiss

    static let shared = ToDoList()
    
    @EnvironmentObject var myCategories : CategoryViewModel
    //@State var isToDoList : Bool = false
    @State private var twoColumns = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    @State var isNewTaskView : Bool = false

 
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color.secondary.opacity(0.1)
                    .ignoresSafeArea()
                
                ScrollView{
                    
                    LazyVGrid(columns: twoColumns){
                        
                        ForEach(myCategories.categories, id: \.id){
                            viewItem in
                            
//                            if(viewItem.counter != 0){
                                ToDoGridView(categoryName: viewItem.categoryName, categoryPicName: viewItem.categoryPicName, counter: viewItem.counter)
//                            }
                            
                        }.padding(.leading)
                            .padding(.trailing)
                        
                    }
                }//ScrollView
                .onAppear(){
                    
                }
                
                //Button
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button{
                            self.isNewTaskView.toggle()
                            dissmiss()
                            
                        } label: {
                            ZStack{
                                Circle()
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .foregroundColor(.indigo)
                                
                                Text("+")
                                    .foregroundColor(.white)
                                    .frame(alignment: .center)
                                    .font(.title)
                            }.shadow(radius: 25)
                            
                        }
                        .fullScreenCover(isPresented: self.$isNewTaskView, content : NewTaskView.init)
                        
                            
                        
                        
                    }.padding()
                    
                }//Z Stack
                
                
                .navigationTitle("ToDo")
            }//NavigationView
            
            
            
        }
    }
    
    struct ToDoList_Previews: PreviewProvider {
        static var previews: some View {
            ToDoList().environmentObject(CategoryViewModel())
        }
    }
    
}
