//
//  inputfield.swift
//  signup_login
//
//  Created by shashwat singh on 29/10/24.
//

import SwiftUI
struct inputView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    @Binding var text:String
    var placeholder:String
    var title:String
    let isSecure  = false
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(title.capitalized)
                    .font(.title)
                    .foregroundColor(settings.darkmode ? .white : .black)
                ZStack(alignment: .leading) {
                    if text.isEmpty {
                        Text(placeholder)
                            .foregroundColor(.black) // Placeholder color
                            .padding(.horizontal, 8)
                    }
                    
                    if isSecure {
                        SecureField("", text: $text)
                            .padding(.horizontal, 8)
                            .foregroundColor(settings.darkmode ? .white : .black)
                            .font(.title3)
                    } else {
                        TextField("", text: $text)
                            .padding(.horizontal, 8)
                            .foregroundColor(settings.darkmode ? .white : .black)
                            .font(.title3)
                    }
                        
                }
                .frame(height: 50)
                .background(settings.darkmode ? Color.gray : Color.blue.opacity(0.2))
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.systemGray6), lineWidth: 3)
                )
            }
            .padding(.horizontal)
        }
               
            }
        }




#Preview {
    inputView(text: .constant(""),placeholder: "Enter your username", title: "username")
        .environmentObject(DarkmodeSettings())
}
