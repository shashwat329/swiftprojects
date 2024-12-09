//
//  TaskView.swift
//  increameter
//
//  Created by shashwat singh on 28/11/24.
//

import SwiftUI

struct TaskView: View {
    @Binding var text: String
    @Binding var count: Int
    var body: some View {
        VStack{
            HStack{
                Text("\(text)")
                .padding()
                .border(Color.primary, width: 2)
                .cornerRadius(4)
               
                Text("\(count)")
                    .padding()
                    .border(Color.primary, width: 2)
                    .cornerRadius(4)
                    .frame(width: 80)
            }
        }
    }
}

//#Preview {
//    TaskView(text: text, count: count)
//}
