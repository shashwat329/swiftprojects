//
//  ContentView.swift
//  newApp
//
//  Created by shashwat singh on 26/05/24.
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()
    
    var body: some View {
        VStack {
            if let dashboardData = viewModel.dashboardData {
                // Display your dashboard data
//                Text("Some Property: \(dashboardData.someProperty)")
//                Text("Another Property: \(dashboardData.anotherProperty)")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
            } else {
                ProgressView("Loading...")
                    .onAppear {
                        viewModel.fetchData()
                    }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(height: 150)
                .overlay(
                    
                        VStack{
                            HStack{
                                Text("Dashboard")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                    .padding()
                                    .padding(.top,40)
                                Spacer()
                                Image(systemName: "gearshape.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .padding(.trailing, 26)
                                    .padding(.top,40)
                            }
                        }
                )
                .padding(.top,-60)
                
        }
        Greeting()
        TabBar()
        
    }
    
}

#Preview {
    ContentView()
}
