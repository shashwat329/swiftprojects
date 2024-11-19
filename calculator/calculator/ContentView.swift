//
//  ContentView.swift
//  calculator
//
//  Created by shashwat singh on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack(alignment: .trailing ){
                Spacer()
                Text("Calculator")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    VStack{
                        HStack{
                            ForEach(0..<3,id:\.self){index in
                                Text("\(index)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 70))
                                    .padding(.horizontal,27)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Text("x")
                                .font(.system(size: 65))
                                .foregroundStyle(.white)
                                .padding(.horizontal,27)
                                .background(.yellow)
                                .cornerRadius(40)

                        }
                        HStack{
                            ForEach(7..<10,id:\.self){index in
                                Text("\(index)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 70))
                                    .padding(.horizontal,27)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Text("x")
                                .font(.system(size: 65))
                                .foregroundStyle(.white)
                                .padding(.horizontal,27)
                                .background(.yellow)
                                .cornerRadius(40)

                        }
                        HStack{
                            ForEach(4..<7,id:\.self){index  in
                                Text("\(index)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 70))
                                    .padding(.horizontal,27)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Text("-")
                                .font(.system(size: 65))
                                .foregroundStyle(.white)
                                .padding(.horizontal,27)
                                .background(.yellow)
                                .cornerRadius(40)
                                

                        }
                        HStack{
                            ForEach(1..<4,id:\.self){index in
                                Text("\(index)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 70))
                                    .padding(.horizontal,27)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Text("+")
                                .font(.system(size: 60))
                                .foregroundStyle(.white)
                                .padding(.horizontal,27)
                                .background(.yellow)
                                .cornerRadius(40)
                        }
//                        .border(.white)
                        HStack{
                            ForEach(1..<4,id:\.self){index in
                                Text("\(index)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 70))
                                    .padding(.horizontal,27)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Text("=")
                                .foregroundStyle(.white)
                                .font(.system(size: 70))
                                .padding(.horizontal,27)
                                .background(.yellow)
                                .cornerRadius(40)

                        }


                }
            }
        }
    }
}

#Preview {
    ContentView()
}
