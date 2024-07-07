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
//import SwiftUI
//struct Forecast: Codable{
//    struct Weather: Codable{
//        let description: String
//        let icon: String
//        var weatherIconURl: URL{
//            let urlstring = "https://openweathermap.org/img/wn/\(icon)@2x.png"
//            return URL(string:urlstring)!
//        }
//    }
//    let weather: [Weather]
//    struct Main: Codable{
//        let temp: Double
//        let max_temp: Double
//        let min_temp: Double
//        let pressure: Int
//        let humidity: Int
//    }
//    let main:[Main]
//    let visibility: Int
//    struct Wind: Codable{
//        let speed: Double
//    }
//    let wind : [Wind]
//    let dt: Data
//    struct Sys: Codable{
//        let country : String
//        let sunrise: Int
//        let sunset:Int
//    }
//    let sys: [Sys]
//}
//
//let apiService = APIService.shared
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "E, MMM, d"
//
//apiService.getJSON(urlString:
//                    "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=b09a396edc775c0707100be5c860b58f",dateDecodingStrategy: .secondsSince1970){
//    ( result: Result<Forecast,APIService.APIError>) in
//    switch result{
//    case .success(let forecast):
//        for day in forecast.daily{
//            print(dateFormatter.string(from: day.dt))
//        }
//    case .failure(let apiError):
//        switch apiError{
//        case .error(let errorString):
//            print(errorString)
//        }
//    }
//)}
//import SwiftUI
//
//struct Forecast: Codable {
//    struct Weather: Codable {
//        let description: String
//        let icon: String
//        var weatherIconURL: URL {
//            let urlString = "https://openweathermap.org/img/wn/\(icon)@2x.png"
//            return URL(string: urlString)!
//        }
//    }
//    let weather: [Weather]
//    
//    struct Main: Codable {
//        let temp: Double
//        let temp_max: Double
//        let temp_min: Double
//        let pressure: Int
//        let humidity: Int
//    }
//    let main: Main
//    
//    let visibility: Int
//    
//    struct Wind: Codable {
//        let speed: Double
//    }
//    let wind: Wind
//    
//    let dt: Int
//    
//    struct Sys: Codable {
//        let country: String
//        let sunrise: Int
//        let sunset: Int
//    }
//    let sys: Sys
//}
//
//class APIService {
//    static let shared = APIService()
//    
//    enum APIError: Error {
//        case error(String)
//    }
//    
//    func getJSON<T: Decodable>(urlString: String, dateDecodingStrategy: JSONDecoder.DateDecodingStrategy, completion: @escaping (Result<T, APIError>) -> Void) {
//        guard let url = URL(string: urlString) else {
//            completion(.failure(.error("Invalid URL")))
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(.error(error.localizedDescription)))
//                return
//            }
//            
//            guard let data = data else {
//                completion(.failure(.error("No data")))
//                return
//            }
//            
//            let decoder = JSONDecoder()
//            decoder.dateDecodingStrategy = dateDecodingStrategy
//            
//            do {
//                let decodedData = try decoder.decode(T.self, from: data)
//                completion(.success(decodedData))
//            } catch {
//                completion(.failure(.error(error.localizedDescription)))
//            }
//        }
//        task.resume()
//    }
//}
//
//struct ContentView: View {
//    @State private var forecast: Forecast?
//    @State private var errorMessage: String?
//    
//    let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "E, MMM d"
//        return formatter
//    }()
//    
//    var body: some View {
//        VStack {
//            if let forecast = forecast {
//                Text("Date: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.dt))))")
//                Text("Country: \(forecast.sys.country)")
//                Text("Sunrise: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.sys.sunrise))))")
//                Text("Sunset: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.sys.sunset))))")
//                ForEach(forecast.weather, id: \.icon) { weather in
//                    Text("Description: \(weather.description)")
//                    Text("Icon URL: \(weather.weatherIconURL.absoluteString)")
//                }
//                Text("Temperature: \(forecast.main.temp)")
//                Text("Max Temp: \(forecast.main.temp_max)")
//                Text("Min Temp: \(forecast.main.temp_min)")
//                Text("Pressure: \(forecast.main.pressure)")
//                Text("Humidity: \(forecast.main.humidity)")
//                Text("Visibility: \(forecast.visibility)")
//                Text("Wind Speed: \(forecast.wind.speed)")
//            } else if let errorMessage = errorMessage {
//                Text("Error: \(errorMessage)")
//            } else {
//                Text("Loading...")
//            }
//        }
//        .onAppear {
//            fetchWeatherData()
//        }
//    }
//    
//    func fetchWeatherData() {
//        let apiService = APIService.shared
//        
//        apiService.getJSON(urlString:
//                            "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=b09a396edc775c0707100be5c860b58f", dateDecodingStrategy: .secondsSince1970) { (result: Result<Forecast, APIService.APIError>) in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let forecast):
//                    self.forecast = forecast
//                case .failure(let apiError):
//                    switch apiError {
//                    case .error(let errorString):
//                        self.errorMessage = errorString
//                    }
//                }
//            }
//        }
//    }
//}
//
//@main
//struct WeatherApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
//import SwiftUI
//
//struct Forecast: Codable {
//    struct Weather: Codable {
//        let description: String
//        let icon: String
//        var weatherIconURL: URL {
//            let urlString = "https://openweathermap.org/img/wn/\(icon)@2x.png"
//            return URL(string: urlString)!
//        }
//    }
//    let weather: [Weather]
//    
//    struct Main: Codable {
//        let temp: Double
//        let temp_max: Double
//        let temp_min: Double
//        let pressure: Int
//        let humidity: Int
//    }
//    let main: Main
//    
//    let visibility: Int
//    
//    struct Wind: Codable {
//        let speed: Double
//    }
//    let wind: Wind
//    
//    let dt: Int
//    
//    struct Sys: Codable {
//        let country: String
//        let sunrise: Int
//        let sunset: Int
//    }
//    let sys: Sys
//}
//
//class APIService {
//    static let shared = APIService()
//    
//    enum APIError: Error {
//        case error(String)
//    }
//    
//    func getJSON<T: Decodable>(urlString: String, dateDecodingStrategy: JSONDecoder.DateDecodingStrategy, completion: @escaping (Result<T, APIError>) -> Void) {
//        guard let url = URL(string: urlString) else {
//            completion(.failure(.error("Invalid URL")))
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(.error(error.localizedDescription)))
//                return
//            }
//            
//            guard let data = data else {
//                completion(.failure(.error("No data")))
//                return
//            }
//            
//            let decoder = JSONDecoder()
//            decoder.dateDecodingStrategy = dateDecodingStrategy
//            
//            do {
//                let decodedData = try decoder.decode(T.self, from: data)
//                completion(.success(decodedData))
//            } catch {
//                completion(.failure(.error(error.localizedDescription)))
//            }
//        }
//        task.resume()
//    }
//}
//
//struct ContentView: View {
//    @State private var forecast: Forecast?
//    @State private var errorMessage: String?
//    
//    let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "E, MMM d"
//        return formatter
//    }()
//    
//    var body: some View {
//        VStack {
//            if let forecast = forecast {
//                Text("Date: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.dt))))")
//                Text("Country: \(forecast.sys.country)")
//                Text("Sunrise: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.sys.sunrise))))")
//                Text("Sunset: \(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(forecast.sys.sunset))))")
//                ForEach(forecast.weather, id: \.icon) { weather in
//                    Text("Description: \(weather.description)")
//                    Text("Icon URL: \(weather.weatherIconURL.absoluteString)")
//                }
//                Text("Temperature: \(forecast.main.temp)")
//                Text("Max Temp: \(forecast.main.temp_max)")
//                Text("Min Temp: \(forecast.main.temp_min)")
//                Text("Pressure: \(forecast.main.pressure)")
//                Text("Humidity: \(forecast.main.humidity)")
//                Text("Visibility: \(forecast.visibility)")
//                Text("Wind Speed: \(forecast.wind.speed)")
//            } else if let errorMessage = errorMessage {
//                Text("Error: \(errorMessage)")
//            } else {
//                Text("Loading...")
//            }
//        }
//        .onAppear {
//            fetchWeatherData()
//        }
//    }
//    
//    func fetchWeatherData() {
//        let apiService = APIService.shared
//        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=b09a396edc775c0707100be5c860b58f"
//        
//        apiService.getJSON(urlString: urlString, dateDecodingStrategy: .secondsSince1970) { (result: Result<Forecast, APIService.APIError>) in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let forecast):
//                    self.forecast = forecast
//                case .failure(let apiError):
//                    switch apiError {
//                    case .error(let errorString):
//                        self.errorMessage = errorString
//                    }
//                }
//            }
//        }
//    }
//}
//
//@main
//struct WeatherApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

