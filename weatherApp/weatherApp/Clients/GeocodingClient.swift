//
//  Geocoding.swift
//  Learn
//
//  Created by shashwat singh on 19/11/24.
//

import Foundation
enum NewtworkError: Error {
    case invaildResponse
}

struct GeocodingClient {
    func coordinatesbyCity(_ city: String) async throws ->  Location? {
        let (data ,response) = try await URLSession.shared.data(from: APIEndpoint.endpoint(for: .coordinatesbyLocationName(city)))
        
        guard let httpResponse = response as? HTTPURLResponse
                ,httpResponse.statusCode == 200 else {
            throw NewtworkError.invaildResponse
        }
        let locations = try JSONDecoder().decode([Location].self, from: data)
        return locations.first
    }
}
