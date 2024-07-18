//
//  Start.swift
//  signup_login
//
//  Created by shashwat singh on 18/07/24.
//

import SwiftUI
struct Start: View {
    @State var nextpage: Bool = false
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                Text("Logo".uppercased())
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.orange)
                Spacer()
                Button(action: {
                    nextpage.toggle()
                },
                       label: {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color(hex: "#1A3636"))
                        .frame(width: 297,height: 55)
                        .overlay{
                            Text("get started".capitalized)
                                .foregroundColor(.white)
                        }
                    
                })
                if nextpage{
                    login()
                    .transition(.move(edge: .bottom))
                }
                Spacer()
            }
        }
    }
    
}

#Preview {
    Start()
}
