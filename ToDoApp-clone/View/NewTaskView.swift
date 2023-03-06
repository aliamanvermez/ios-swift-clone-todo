//
//  NewTaskView.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 3.03.2023.
//

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var text : String = ""
    @State private var taskDate = Date()
    @State private var note : String = ""
    @State var selectedCategory : String = "Select category"


    
    @EnvironmentObject var myCategories : CategoryViewModel
    
    @State private var isToDoListView : Bool = false
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                VStack{
                    //2nd Title
                    HStack{
                        Text("What are your planning?")
                            .foregroundColor(.secondary)
                        Spacer()
                    }.padding(.leading)
                    
                    //TextEditor
                    TextEditor(text: $text)
                            .foregroundColor(.secondary)
                            .frame(width: UIScreen.main.bounds.width, height: 120, alignment: .top)
                            .padding(.bottom)
                    
                    Divider().padding(.bottom)
                    
                    //DatePicker
                    HStack{
                        Image(systemName: "bell.badge")
                            .foregroundColor(.secondary)
                            .padding(.leading)
                        DatePicker(selection: $taskDate, in: Date()...,
                                   displayedComponents: [.date, .hourAndMinute]){
                            // code
                            
                        }.padding(.trailing, 120)
                            .colorInvert().colorMultiply(.blue)
                    }.padding(.bottom)
            
                    //Add Note Part
                    HStack{
                        Image(systemName: "square.and.pencil").padding(.leading)
                        TextField("add note", text: $note).padding()
                    }.padding(.trailing)
                        .foregroundColor(.secondary)
                    
                    //Selected Category Part
                    HStack{
                        Image(systemName: "tag").padding(.leading)
                            .padding(.trailing)
                        Text("\(selectedCategory)")
                        Spacer()
                    }.padding(.trailing)
                        .foregroundColor(.secondary)
                        .padding(.bottom)
                    
                    //Category Part
                    LazyVGrid(columns: threeColumnGrid){
                        ForEach(myCategories.categories, id: \.id){
                            viewItem in
                            CategoryView(categoryName: viewItem.categoryName, categoryPicName: viewItem.categoryPicName, selectedCategory: $selectedCategory)
                            
                        }
                    }.padding(.bottom,30)
                   
                    
                    Button {
                        //Action
                        presentationMode.wrappedValue.dismiss()
                        isToDoListView.toggle()
                       
                        for i in 0...13{
                            myCategories.categories[i].increaseCounter()
                            print(myCategories.categories[i].counter)
                        }
                        
                       
                       
                        
                        
                    } label: {
                        
                        Text("Add")
                            .frame(width: UIScreen.main.bounds.width - 30, height: 40)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }.fullScreenCover(isPresented: self.$isToDoListView, content: {
                        ToDoList()
                    })
                   

                    
                    
                    Spacer()
                }
                
            }
            

                .navigationTitle("New Task")
                .toolbar{
                    Button {
                     presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
                .navigationBarBackButtonHidden(true)
                .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView().environmentObject(CategoryViewModel())
    }
}
