//
//  WeatherApp.swift
//  GithubAPI
//
//  Created by shashwat singh on 08/12/24.
//

import SwiftUI

struct WeatherApp: View {
    @State private var weatherDetail: WeatherDetail?
    var body: some View {
        HStack{
            Text("\(String(format: "%.1f", (weatherDetail?.main.tempMin ?? 0) - 273))°C")
            Spacer()
            Text("\(String(format: "%.1f", (weatherDetail?.main.temp ?? 0) - 273))°C")
                .font(.largeTitle)
            Spacer()
            Text("\(String(format: "%.1f", (weatherDetail?.main.tempMax ?? 0) - 273))°C")
        }
        .padding()
        .task{
            do{
                weatherDetail = try await getWeather()
            }
            catch WError.invalidData{
                print("invalid Data")
            }
            catch WError.invalidURL{
                print("invalid URL")
            }
            catch WError.invalidResponse{
                print("invalid Response")
            }
            catch{
                print("Exception Error Occurred")
            }
        }
    }
    func getWeather() async throws -> WeatherDetail {
        let endpoint = "https://api.openweathermap.org/data/2.5/weather?q=london&appid=b09a396edc775c0707100be5c860b58f"
        guard let url = URL(string: endpoint) else{
            throw WError.invalidURL
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse , response.statusCode == 200 else{
                  throw WError.invalidResponse
              }
        do{
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let WeatherDetail = try decoder.decode(WeatherDetail.self, from: data)
            return WeatherDetail
            
        }
        catch{
            throw WError.invalidData
        }
        
    }
}
enum WError : Error{
    case invalidURL
    case invalidResponse
    case invalidData
}
struct WeatherDetail: Decodable{
    let main: Main
    
    struct Main: Decodable{
        let temp: Double
        let tempMax: Double
        let tempMin: Double
    }
    
    
}
#Preview {
    WeatherApp()
}
