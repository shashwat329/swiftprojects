//
//  Forecast.swift
//  weatherApp
//
//  Created by shashwat singh on 07/07/24.
//

import Foundation
struct Forecast: Codable{
    struct Weather: Codable{
        let description: String
        let icon: String
        var weatherIconURl: URL{
            let urlstring = "https://openweathermap.org/img/wn/\(icon)@2x.png"
            return URL(string:urlstring)!
        }
    }
    let weather: [Weather]
    struct Main: Codable{
        let temp: Double
        let max_temp: Double
        let min_temp: Double
        let pressure: Int
        let humidity: Int
    }
    let main:[Main]
    let visibility: Int
    struct Wind: Codable{
        let speed: Double
    }
    let wind : [Wind]
    let dt: Data
    struct Sys: Codable{
        let country : String
        let sunrise: Int
        let sunset:Int
    }
    let sys: [Sys]
}
