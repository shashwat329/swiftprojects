//
//  FirstView.swift
//  weatherApp
//
//  Created by shashwat singh on 07/08/24.
//

import SwiftUI

struct FirstView: View {
    @State var location: String = "Delhi";
    @State var temp: Int = 20;
    @State var maxtemp : Int = 25
    @State var mintemp: Int = 16
    @State var weatherstatus : String = "cloudy"
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    wave()
                        .fill(Color.blue)
                        .frame(height: 500)
                        .shadow( radius: 5, x: 0, y: 5)
                        .overlay{
                            VStack(spacing: 0){
                                HStack{
                                    NavigationLink( destination: ContentView()){
                                        Image(systemName: "gear")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    }
                                    Spacer()
                                    Text("\(location)")
                                        .font(.system(size: 40))
                                    Spacer()
                                    NavigationLink(destination: ContentView()){
                                        Image(systemName: "person")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    }
                                }
                                .padding(.horizontal)
                                Spacer()
                                HStack(alignment:.top){
                                    Text("\(temp)°")
                                        .font(.system(size: 60))
                                        .padding(.leading,25)
                                }
                                HStack{
                                    HStack(alignment:.top){
                                        Text("\(mintemp)")
                                            .font(.system(size: 20))
                                        Circle()
                                            .stroke(lineWidth: 2)
                                            .frame(width: 5)
                                    }
                                    Spacer()
                                    Text(weatherstatus)
                                        .font(.title3)
                                    Spacer()
                                    HStack(alignment:.top){
                                        Text("\(maxtemp)")
                                            .font(.system(size: 20))
                                    Circle()
                                        .stroke(lineWidth: 2)
                                        .frame(width: 5)
                                    }
                                }
                                .padding(.horizontal)
                                Spacer()
                            }
                            .foregroundColor(.white)
                            .padding(.top,57)
                        }
                    
                    Spacer()
                    secondView()
                    Spacer()
                }
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
               
            }
                
            
        }
    }
}
#Preview {
    FirstView()
}
