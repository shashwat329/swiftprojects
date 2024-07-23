//
//  Start.swift
//  signup_login
//
//  Created by shashwat singh on 18/07/24.
//
//
//import SwiftUI
//struct Start: View {
//    @State var nextpage: Bool = false
//    var body: some View {
//        ZStack{
//            //background
//            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            //content
//            NavigationView{
//                VStack{
//                    Spacer()
//                    Text("Logo".uppercased())
//                        .font(.largeTitle)
//                        .bold()
//                        .foregroundColor(.orange)
//                    Spacer()
//                    NavigationLink(destination: login()){
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color(hex: "#1A3636"))
//                            .frame(width: 297,height: 55)
//                            .overlay{
//                                Text("get started".capitalized)
//                                    .foregroundColor(.white)
//                            }
//
//                    }
//                    Spacer()
//                }
//                
//            }
//            .navigationBarHidden(true)
//            
//        }
//    }
//    
//}
//
//#Preview {
//    Start()
//}
