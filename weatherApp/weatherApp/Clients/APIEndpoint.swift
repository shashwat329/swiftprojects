//
//  APIEndpoint.swift
//  Learn
//
//  Created by shashwat singh on 19/11/24.
//

import Foundation
enum APIEndpoint {
    static let baseURL: String = "https://api.openweathermap.org/"
    
    case coordinatesbyLocationName(String)
    case weatherbyLatlon(Double, Double)
    
    private var path: String {
        switch self {
        case .coordinatesbyLocationName(let city):
            return "/geo/1.0/direct?q=\(city)&appid=\(Constants.Keys.weatherAPIKey)"
        case .weatherbyLatlon(let lat, let lon):
            return "/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherAPIKey)"
        }
    }
    static func endpoint(for endpoint: APIEndpoint) -> URL {
        let endpointPath = endpoint.path
        return URL(string: baseURL + endpointPath)!
        
    }
}
