//
//  g2.swift
//  gpay
//
//  Created by shashwat singh on 11/07/24.
//

import SwiftUI

struct g2: View {
    @State private var amount: String = ""
    @State private var note: String = ""
    @State private var isPaySelected: Bool = true
    @State private var name: String = "kumar shashwat".uppercased()
    let backgroundColor = Color(red: 0.07, green: 0.07, blue: 0.07)
    let lightgray = Color(red: 0.90, green: 0.90, blue: 0.90)
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            VStack() {
                // User Info
                VStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Paying \(name)")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Banking name: \(name)")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.bottom)
                    Text("UPI ID: achschishcihsu@syb")
                        .foregroundColor(lightgray)
                }
                // Amount Input
                HStack (spacing: 2){
                    Text("₹")
                            .foregroundColor(.white)
                            .padding(.leading, 5)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                            .border(Color.red)
                    TextField(" 0",text: $amount)
                        .foregroundColor(.white)
                        .frame(maxWidth: 63,minHeight: 60)
                        .multilineTextAlignment(.leading)
                        .font(.largeTitle)
//                        .border(Color.blue)
                }
                
             
                // Note Input
                if note.isEmpty {
                    TextField("", text: $note)
                        .foregroundColor(.white)
                        .keyboardType(.numberPad)
                        .font(.system(size: 40))
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .overlay(
                            Text("Add a note")
                                .colorInvert()
                        
                        )
                }
              
            }
            .padding()

        }
    }
}

#Preview {
    g2()
}

