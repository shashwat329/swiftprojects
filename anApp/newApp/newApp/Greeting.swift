//
//  Greeting.swift
//  newApp
//
//  Created by shashwat singh on 26/05/24.
//

import SwiftUI

struct Greeting: View {
    @State private var currentTime = Date()
    func getGreeting() -> String {
        let hour = Calendar.current.component(.hour, from: currentTime)
        switch hour {
        case 6..<12:
            return "Good Morning"
        case 12..<17:
            return "Good Afternoon"
        case 17..<22:
            return "Good Evening"
        default:
            return "Good Night"
        }
    }
    var username = "Shashwat"
    var body: some View {
        
        VStack{
            HStack{
                Text(getGreeting())
                    .foregroundColor(Color.gray)
                    .padding(.top)
            }
            HStack{
                Text(username)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .bold()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
//            .border(Color.black, width: 2)
        .padding(.top,-10)
        Spacer()
    }
}

#Preview {
    Greeting()
}
