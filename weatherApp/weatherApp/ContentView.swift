//
//  ContentView.swift
//  weatherApp
//
//  Created by shashwat singh on 07/07/24.
//
import CoreLocation
import SwiftUI

struct ContentView: View {
    @State private var location: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter location: ", text: $location)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        getweatherForecast(for: location)
                    } label: {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .font(.title3)
                    }
                }
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Mobile weather")
        }
    }
    
    func getweatherForecast(for location: String) {
        let apiService = APIService.shared
        CLGeocoder().geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let lat = placemarks?.first?.location?.coordinate.latitude,
               let lon = placemarks?.first?.location?.coordinate.longitude {
                let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=b09a396edc775c0707100be5c860b58f"
                apiService.getJSON(urlString: urlString, dateDecodingStrategy: .secondsSince1970) { (result: Result<Forecast, APIService.APIError>) in
                    switch result {
                    case .success(let forecast):
                        for weather in forecast.weather {
                            print("Description: \(weather.description)")
                            //                                           print("Icon URL: \(weather.weatherIconURL)")
                            //
                        }
                            print("Temperature: \(forecast.main.temp)")
                            print("Max Temp: \(forecast.main.max_temp)")
                            print("Min Temp: \(forecast.main.min_temp)")
                            print("Pressure: \(forecast.main.pressure)")
                            print("Humidity: \(forecast.main.humidity)")
                            print("Visibility: \(forecast.visibility)")
                            print("Wind Speed: \(forecast.wind.speed)")
                            print("Country: \(forecast.sys.country)")
                            print("Sunrise: \(forecast.sys.sunrise)")
                            print("Sunset: \(forecast.sys.sunset)")
                        case failure(apiError):
                            switch apiError {
                            case .error(let errorString):
                                print(errorString)
                            }
                        }
                    }
                }
            }
        }
    }
    #Preview {
        ContentView()
    }

