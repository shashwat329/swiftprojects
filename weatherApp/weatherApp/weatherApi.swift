//
//  weatherApi.swift
//  weatherApp
//
//  Created by shashwat singh on 29/06/24.
//


/*
 college location: 28.6342886,77.4459563
 https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=b09a396edc775c0707100be5c860b58f
*/
import SwiftUI
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
struct weatherApi: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
   
    }
}

#Preview {
    weatherApi()
}
