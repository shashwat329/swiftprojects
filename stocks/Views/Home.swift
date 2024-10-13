//
//  SwiftUIView.swift
//  stocks
//
//  Created by shashwat singh on 04/10/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            HStack{
                Text("logo")
                    .font(.largeTitle)
                    .foregroundStyle(Color.orange)
                    .padding()
                
                Spacer()
                HStack(){
                    Image(systemName: "magnifyingglass")
                        .font(.largeTitle)
                    Image(systemName: "person.circle")
                        .font(.largeTitle)
                }
                .padding()
            }
            .background(Color.gray.opacity(0.1))
//            .border(Color.black,width: 1)
            Spacer()
            HStack{
                VStack(alignment:.leading){
                    Text("Top Stocks")
                        .font(.title)
                        .padding(5)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<10, id: \.self) { index in
                                Rectangle()
                                    .fill(Color.gray.opacity(0.1))
                                    .frame(width: 210,height: 210)
                                    .overlay {
                                        Text("stock \(index)")
                                    }
                            }
                        }
                    }
                }
                
            }
            Spacer()
            HStack{
                VStack(alignment:.leading){
                    Text("Indices ")
                        .font(.title)
                        .padding(5)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<10, id: \.self) { index in
                                Rectangle()
                                    .fill(Color.gray.opacity(0.1))
                                    .frame(width: 210,height: 100)
                                    .overlay {
                                        Text("stock index \(index)")
                                    }
                            }
                        }
                    }
                }
                
            }
            Spacer()
        }
    }
}

#Preview {
    Home()
}
