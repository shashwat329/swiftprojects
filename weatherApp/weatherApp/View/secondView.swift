//
//  secondView.swift
//  weatherApp
//
//  Created by shashwat singh on 11/08/24.
//

import SwiftUI

struct secondView: View {
    var body: some View {
        VStack{
            ForEach(0..<7) { _ in
                HStack {
                    Text("monday")
                        .font(.title2)
                    Spacer()
                    HStack(alignment:.top){
                        Text("\(20)")
                            .font(.system(size: 20))
                        Circle()
                            .stroke(lineWidth: 2)
                            .frame(width: 5)
                    }
                    Image(systemName: "cloud")
                        .font(.subheadline)
                }
                .padding(.horizontal, 60)
            }
           
            .foregroundColor(.secondary)
            
        }
        .padding(.top,30)
    }
}

#Preview {
    secondView()
}
