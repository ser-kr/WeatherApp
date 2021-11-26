////
////  WeatherModel.swift
////  WeatherApp
////
////  Created by SK on 18.11.2021.
////
//
//
////   let welcome = try Welcome(json)
//
//import Foundation
//
//// MARK: - Welcome
//struct Welcome: Codable {
//    let lat, lon: Double
//    let timezone: String
//    let timezoneOffset: Int
//    let hourly: [Hourly]
//
//    enum CodingKeys: String, CodingKey {
//        case lat, lon, timezone
//        case timezoneOffset = "timezone_offset"
//        case hourly
//    }
//}
//
//// MARK: Welcome convenience initializers and mutators
//
//extension Welcome {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Welcome.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        lat: Double? = nil,
//        lon: Double? = nil,
//        timezone: String? = nil,
//        timezoneOffset: Int? = nil,
//        hourly: [Hourly]? = nil
//    ) -> Welcome {
//        return Welcome(
//            lat: lat ?? self.lat,
//            lon: lon ?? self.lon,
//            timezone: timezone ?? self.timezone,
//            timezoneOffset: timezoneOffset ?? self.timezoneOffset,
//            hourly: hourly ?? self.hourly
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Hourly
//struct Hourly: Codable {
//    let dt: Int
//    let temp, feelsLike: Double
//    let pressure, humidity: Int
//    let dewPoint, uvi: Double
//    let clouds, visibility: Int
//    let windSpeed: Double
//    let windDeg: Int
//    let windGust: Double
//    let weather: [Weather]
//    let pop: Double
//    let rain: Rain?
//
//    enum CodingKeys: String, CodingKey {
//        case dt, temp
//        case feelsLike = "feels_like"
//        case pressure, humidity
//        case dewPoint = "dew_point"
//        case uvi, clouds, visibility
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case windGust = "wind_gust"
//        case weather, pop, rain
//    }
//}
//
//// MARK: Hourly convenience initializers and mutators
//
//extension Hourly {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Hourly.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        dt: Int? = nil,
//        temp: Double? = nil,
//        feelsLike: Double? = nil,
//        pressure: Int? = nil,
//        humidity: Int? = nil,
//        dewPoint: Double? = nil,
//        uvi: Double? = nil,
//        clouds: Int? = nil,
//        visibility: Int? = nil,
//        windSpeed: Double? = nil,
//        windDeg: Int? = nil,
//        windGust: Double? = nil,
//        weather: [Weather]? = nil,
//        pop: Double? = nil,
//        rain: Rain?? = nil
//    ) -> Hourly {
//        return Hourly(
//            dt: dt ?? self.dt,
//            temp: temp ?? self.temp,
//            feelsLike: feelsLike ?? self.feelsLike,
//            pressure: pressure ?? self.pressure,
//            humidity: humidity ?? self.humidity,
//            dewPoint: dewPoint ?? self.dewPoint,
//            uvi: uvi ?? self.uvi,
//            clouds: clouds ?? self.clouds,
//            visibility: visibility ?? self.visibility,
//            windSpeed: windSpeed ?? self.windSpeed,
//            windDeg: windDeg ?? self.windDeg,
//            windGust: windGust ?? self.windGust,
//            weather: weather ?? self.weather,
//            pop: pop ?? self.pop,
//            rain: rain ?? self.rain
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}∫
//    
//    
//   
//
