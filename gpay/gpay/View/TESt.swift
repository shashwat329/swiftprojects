//
//  TESt.swift
//  gpay
//
//  Created by shashwat singh on 15/11/24.
//

import SwiftUI

struct TESt: View {
    var body: some View {
        ZStack{
            Color(.yellow).ignoresSafeArea()
            VStack{
                Rectangle().frame(width: 300, height: 300)
                    .opacity(0.0)
                    .border(.white, width: 7)
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.white)
                    .frame(width: 200, height: 50)
                    .overlay {
                        Text("Upload from gallery")
                            .foregroundStyle(.black)
                    }
            }
            .frame(width: 900, height: 900)
            .background(Color.gray.opacity(0.4))
           
        }
    }
}

#Preview {
    TESt()
}
