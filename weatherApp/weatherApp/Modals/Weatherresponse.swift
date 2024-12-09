//
//  Weatherresponse.swift
//  weatherApp
//
//  Created by shashwat singh on 22/11/24.
//

import Foundation

struct Weatherresponse: Decodable{
    let main: Weather
}
struct Weather: Decodable{
    let temp: Double
}
