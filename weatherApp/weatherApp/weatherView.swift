//
//  weatherView.swift
//  Learn
//
//  Created by shashwat singh on 19/11/24.
//

import Foundation
import SwiftUI

struct weatherView: View {
    let geocodingclient = GeocodingClient()
    let weatherClient = WeatherClient()
    @State private var city: String = ""
    @State private var isFetchingWeather: Bool = false
    @State private var weather: Weather?
    private func fetchWeather() async {
        do{
           guard  let location = try await geocodingclient.coordinatesbyCity(city) else{ return}
           weather = try await  weatherClient.FetchWeather(location: location)
        }
        catch{
            print(error)
        }
        
    }
    var body: some View {
        ZStack{
            VStack{
                TextField("Enter City", text: $city)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        isFetchingWeather = true
                    }.task(id: isFetchingWeather) {
                        if  isFetchingWeather{
                            await fetchWeather()
                            isFetchingWeather = false
                            city = ""
                        }
                    }
                Spacer()
                if let weather{
                    Text(MeasurementFormatter.temperature(value: weather.temp))
                        .font(.system(size: 100 ))
                }
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    weatherView()
}
