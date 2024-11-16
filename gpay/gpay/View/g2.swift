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
    var scannedString: String
    let backgroundColor = Color(red: 0.07, green: 0.07, blue: 0.07)
    let lightgray = Color(red: 0.90, green: 0.90, blue: 0.90)
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
            VStack() {
                Spacer()
                // User Info
                VStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Paying \(scannedString.capitalized)")
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
                        .keyboardType(.numberPad)
//                        .border(Color.blue)
                }
                
             
                // Note Input
                if note.isEmpty {
                    TextField("", text: $note)
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .padding()
                        .frame(width: 120, height: 40)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .overlay(
                            Text("Add note")
                        
                        )
                }
                // tonextView
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink {g3()} label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 70, height: 70)
                            .padding()
                            .overlay(
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            )
                    }

                }
            }
            .padding()

        }
        
    }
}

#Preview {
    g2(scannedString: "hello")
}

