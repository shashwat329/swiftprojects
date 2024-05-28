//
//  DashboardViewModel.swift
//  newApp
//
//  Created by shashwat singh on 28/05/24.
//

import Foundation
import Combine

class DashboardViewModel: ObservableObject {
    @Published var dashboardData: DashboardResponse?
    @Published var errorMessage: String?
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        APIClient.shared.fetchData { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self?.dashboardData = data
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}

