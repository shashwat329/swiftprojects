//
//  login.swift
//  signup_login
//
//  Created by shashwat singh on 18/07/24.
//

import SwiftUI
import Combine

struct login: View {
  
    @State private var username: String = ""
    @State private var password: String = ""
    @EnvironmentObject var settings: DarkmodeSettings// this is to shared the darkmode which was created in the previous page
    
    var body: some View {
        
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
                VStack(alignment: .center){
                    Spacer()
                    Text("Login")
                        .font(.largeTitle)
                        .frame(alignment: .center)
                        .foregroundColor(settings.darkmode ?  .white: .black)
                    Spacer()
                    VStack(alignment: .leading,spacing: 0){
                        Text("Username")
                            .foregroundColor(settings.darkmode ? .white : .black)
                            .font(.title2)
                        ZStack(alignment: .leading){
                            if username.isEmpty{
                                Text("Enter your name")
                                    
                            }
                            TextField("",text: $username)
//                                .onChange(of: username){ newValue in
//                                    print("username is \(newValue)")
//                                }
                        }
                        .frame(height: 42)
                        .padding(.horizontal)
                        .background(Color(settings.darkmode ? .gray : .gray.opacity(0.2)))
                        .cornerRadius(6)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6),lineWidth: 2)
                        }
                    }
                    .padding(.horizontal,50)
                    VStack(alignment: .leading, spacing: 0,content: {
                        Text("Password")
                            .foregroundColor(settings.darkmode ?.white: .black)
                            .font(.title2)
                        ZStack(alignment: .leading){
                            if password.isEmpty{
                                Text("Enter your password")
                            }
                            SecureField("",text: $password)
                        }
                        .padding(.horizontal)
                        .frame(height: 42)
                        .background(Color(settings.darkmode ? .gray : .gray.opacity(0.2)))
                        .cornerRadius(6)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6),lineWidth: 2)
                        }
                       
                           
                            
                    })
                    .padding(.horizontal,50)
                
                    .padding(.bottom)
                
                    NavigationLink(destination: OTPlogin().environmentObject(settings)){
                        RoundedRectangle(cornerRadius: 25)
                             .fill(Color(hex: "#1A3636"))
                             .frame(width: 300,height: 48)
                             .overlay{
                                 Text("Login")
                                     .font(.title3)
                                     .foregroundColor(.white)
                                     .bold()
                             }
                    }
                        .padding()
                    HStack{
                        Text("Do you have account?")
                            .foregroundColor(settings.darkmode ? .white : .black)
                            .font(.callout)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("SignUp")
                                .underline()
                                .font(.title3)
                        })
                    }
                    .padding(.bottom,6)
                    Text("Or")
                    HStack{
                        ForEach(0..<3){index in
                            Circle()
                                .stroke(settings.darkmode ? .white : .black)
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
        .environmentObject(DarkmodeSettings())
}
