//
//  AddScreenView.swift
//  todoList
//
//  Created by shashwat singh on 28/07/24.
//

import SwiftUI

struct AddScreenView: View {
    @State var task: String = "";
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 400)
                    .padding(.top,40)
                    .overlay{
                        VStack{
                            
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "xmark")
                                    .font(.largeTitle)
                            })
                        Spacer()
                            Text("Add your task")
                                .foregroundColor(.white)
                            HStack{
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                     .fill(Color.white)
                                     .frame(maxWidth: 200,maxHeight: 40)
                                     .padding(.leading,70)
                             
                                     .overlay{
                                         if task.isEmpty{
                                             Text("Enter your task")
                                                 .padding(.leading,50)
                                         }
                                         TextField("", text: $task)
                                             .padding(.leading,100)
                                     }
                                Button(action: {
                                    
                                }, label: {
                                    Text("Add")
                                })
                                .padding(.trailing,30)
                            }
                            Spacer()
                            
                        }
                }
            }
        }
    }
}

#Preview {
    AddScreenView()
}
