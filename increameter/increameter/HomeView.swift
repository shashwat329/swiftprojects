//
//  HomeView.swift
//  increameter
//
//  Created by shashwat singh on 28/11/24.
//

import SwiftUI

struct HomeView: View {
    var tasklist: [Task] = []
    var body: some View {
        VStack{
            Text("ALL Task")
                .font(.title)
                .underline()
            HStack{
//            ForEach(tasklist){ task in
//                    TaskView(task: task)
//                }
            }
        }
    }
}

#Preview {
    HomeView()
}
