//
//  JSON.swift
//  WeatherApp
//
//  Created by SK on 17.11.2021.
//

import Foundation

//class NetworkManager: Codable {
//
//    func fetchCurrentWeather() {
// let urlString = "https://api.openweathermap.org/data/2.5/onecall?lat=48.51&lon=32.26&exclude=alerts,daily,minutely,current&appid=9ff7383a978d3ca7f3da8e556358af60&units=metric"
//        guard let url = URL(string: urlString) else { return }
//        let session = URLSession(configuration: .default)
//        let task = session.dataTask(with: url) { data, response, error in
//            if let data = data {
//                self.parseJSON(withData: data)
//            }
//            }
//        task.resume()
//    }
//    func parseJSON(withData data: Data) {
//        let decoder = JSONDecoder()
//        do {
//        let currenWeatherData = try decoder.decode(WeatherModel.self, from: data)
//            print(currenWeatherData.hourly.count)
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
//}
//
//let da: NetworkManager = NetworkManager()

//class WeatherService {
//    
//    func fetchWeatherData(completionHandler: WeatherModel)  {
//        
//        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=48.51&lon=32.26&exclude=alerts,daily,minutely,current&appid=9ff7383a978d3ca7f3da8e556358af60&units=metric")!
//        print(url)
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                
//                print(error)
//                return
//            }
//            guard let httpResponse = response as? HTTPURLResponse,
//                  (200...299).contains(httpResponse.statusCode)
//            else {
//                
//                if let httpResponse = response as? HTTPURLResponse {
//                    print("URL: \(httpResponse.url!.path )\nStatus code: \(httpResponse.statusCode)")
//                }
//                return
//            }
//            
//            if let data = data {
//                
//                // Create and configure a JSON decoder
//                let decoder = JSONDecoder()
//                decoder.dateDecodingStrategy = .iso8601
//                
//                do {
//                    
//                    let result = try decoder.decode(WeatherModel.self, from: data)
//                    
//                    // Diagnostic
//                    print("result in url session")
//                    print(result.hourly.first?.temp as Any)
//                    
//                    // Save the data (in memory)
//                    //completionHandler(result)
//                    
//                    // Then reload the table view; must be done this way
//                    
//                }
//                catch {
//                    print("error exception in url session")
//                    print(error)
//                }
//            }
//        }
//        
//        // Now that "task" has been fully defined, execute it...
//        task.resume()
//        
//    }
//    
//}
//
//let da: WeatherService = WeatherService()
//print(da)


//guard let url = URL(string: urlWeather) else { return }
//URLSession.shared.dataTask(with: url) { data, response, error in
//  if let error = error {
//      print(error)
//      return
//  }
//  guard let data = data else { return }
//
//  do {
//      let weatherJson = try JSONDecoder().decode(WeatherModel.self, from: data)
//      print(weatherJson.hourly.first?.temp)
//      print(weatherJson.hourly)
//  } catch {
//      print(error)
//  }
//
//  } .resume()
//}
//}
