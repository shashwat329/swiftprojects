//
//  ContentView.swift
//  signup_login
//
//  Created by shashwat singh on 18/07/24.
//

import SwiftUI
import Combine

class DarkmodeSettings: ObservableObject{
    @Published var darkmode : Bool = false
}
struct ContentView: View {
    @StateObject private var settings = DarkmodeSettings()
    @State var nextpage: Bool = false
    var body: some View {
            //background
            
            //content
            NavigationView{
                ZStack{
                    
                    Color(settings.darkmode ? .black : .white)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack{
                        Button(action: {
                            settings.darkmode.toggle()
                        },
                               label: {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke()
                                .frame(width: 60,height: 30)
                                .overlay(
                                    Circle(),
                                    alignment: settings.darkmode ? .trailing : .leading
                                )
                                .animation(.easeInOut,value: settings.darkmode)
                        })
                        
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        .padding()
                        Spacer()
                        Text("Logo".uppercased())
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.orange)
                        Spacer()
                        NavigationLink(destination: login().environmentObject(settings)){
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(hex: "#1A3636"))
                                .frame(width: 297,height: 55)
                                .overlay{
                                    Text("get started".capitalized)
                                        .foregroundColor(.white)
                                }
                               
                            
                        }
                        Spacer()
                    }
                    
                }
            }
            .navigationBarHidden(true)
            
    }
    
}

#Preview {
    ContentView()
        .environmentObject(DarkmodeSettings())
}
