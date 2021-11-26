//
//  GetRequest.swift
//  WeatherApp
//
//  Created by SK on 17.11.2021.
//

import Foundation
import UIKit

struct WeatherModel: Codable {
    var lat: Double = 0.0
    var lon: Double = 0.0
    var timezone: String = ""
    var hourly: [HourlyWeather] = []
    enum CodingKeys: String, CodingKey {
            case  lat, lon, timezone, hourly
           
        }
   }

struct HourlyWeather: Codable {
    var dt: Date = Date()
    var temp: Double = 0.0
    enum CodingKeys: String, CodingKey {
        case dt, temp
    }
}
extension Date {
    
    func dateToString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
