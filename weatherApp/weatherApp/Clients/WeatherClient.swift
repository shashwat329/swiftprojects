//
//  WeatherClient.swift
//  Learn
//
//  Created by shashwat singh on 20/11/24.
//
import Foundation
struct WeatherClient{
    func FetchWeather(location: Location) async throws -> Weather {
        let (data , response) = try await URLSession.shared.data(from: APIEndpoint.endpoint(for: .weatherbyLatlon(location.lat, location.lon)))
        guard let httpResponse = response as? HTTPURLResponse ,
              httpResponse.statusCode == 200 else {
            throw NewtworkError.invaildResponse
        }
        let weatherResponse =  try JSONDecoder().decode(Weatherresponse.self, from: data)
        return weatherResponse.main
    }
}
