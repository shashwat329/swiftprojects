//
//  ContentView.swift
//  todoList
//
//  Created by shashwat singh on 27/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [String] = ["task1","task2"]
    @State var addtask: Bool = false;
    var body: some View {
        ZStack {
            // Background
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            // Content
            NavigationView {
                List {
                    Section(header: Text("Tasks")) {
                        ForEach(tasks, id: \.self) { task in
                            Text(task)
                        }
                        .onDelete(perform: { indexSet in
                            tasks.remove(atOffsets: indexSet)
                        })
                    }
                }
                .navigationTitle("To-do list")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(action: {
                        addtask.toggle()
//                        print(addtask.description)
                    }, label: {
                        Text("Add")
                    })
                    
                )
                if addtask{
                    AddScreenView()
                }
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
