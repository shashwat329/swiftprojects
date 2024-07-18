//
//  login.swift
//  signup_login
//
//  Created by shashwat singh on 18/07/24.
//

import SwiftUI

struct login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        
        ZStack {
            Color(hex: "#F6F6F6").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .center){
                Spacer()
                Text("Login")
                    .font(.largeTitle)
                    .frame(alignment: .center)
                VStack(alignment: .leading,spacing: 0){
                    Text("Username")
                    TextField(" Enter your username",text: $username)
                        .frame(height: 42)
                        .background(Color(.systemBackground))
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6),lineWidth: 1)
                        }
                }
                .padding(.horizontal,50)
                VStack(alignment: .leading, spacing: 0,content: {
                    Text("Password")
                    SecureField(" Enter your password",text: $password)
                        .frame(height: 42)
                        .background(Color(.systemBackground))
                        .cornerRadius(6)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6),lineWidth: 1)
                        }
                        
                })
                .padding(.horizontal,50)
            
                .padding(.bottom)
            
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                       RoundedRectangle(cornerRadius: 25)
                            .fill(Color(hex: "#1A3636"))
                            .frame(width: 300,height: 42)
                            .overlay{
                                Text("Login")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                    })
                    .padding()
                HStack{
                    Text("Do you have account?")
                        .font(.caption)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("SignUp")
                            .underline()
                            .font(.callout)
                    })
                }
                .padding(.bottom,6)
                Text("Or")
                HStack{
                    ForEach(0..<3){index in
                        Circle()
                            .stroke()
                            .frame(width: 60)
                            .padding()
                    }
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    login()
}
