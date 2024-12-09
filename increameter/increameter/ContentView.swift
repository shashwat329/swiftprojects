//
//  ContentView.swift
//  increameter
//
//  Created by shashwat singh on 28/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var times: Int = 0
    var body: some View {
        VStack(alignment: .leading) {
            Text("Task Entry")
                .font(.headline)
            HStack{
                TextField(text: $text) {
                    Text("Enter any task")
                }
                .padding()
                .border(Color.primary, width: 2)
                .cornerRadius(4)
               
                TextField("Enter times", value: $times, formatter: NumberFormatter())
                    .onSubmit {
                        print("\(text) and \(times)")
                    }
                    .padding()
                    .keyboardType(.numberPad)
                    .border(Color.primary, width: 2)
                    .cornerRadius(4)
                    .frame(width: 80)
            }
               
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
