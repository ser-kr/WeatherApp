//
//  ViewModel.swift
//  WeatherApp
//
//  Created by SK on 25.11.2021.
//

import Foundation
class WeatherViewModel {
    var weath: WeatherModel = WeatherModel()
    var get: NetworkDataFetcher = NetworkDataFetcher()
    let url = "https://api.openweathermap.org/data/2.5/onecall?lat=48.51&lon=32.26&exclude=alerts,daily,minutely,current&appid=9ff7383a978d3ca7f3da8e556358af60&units=metric"
    func getWeather() {
        get.fetchTracks(urlString: url) { (searchResponse) in
            guard let searchResponse = searchResponse else { return }
            self.weath = searchResponse
            
            //print("temPP")
            print(searchResponse.timezone)
            print(self.weath.timezone)
            print(self.weath.hourly.first?.temp as Any)
            print(self.weath.lat)
        }
    }
        
}



//class GoodsViewModel {
//
//    var goods: [WeatherModel] = []
//    let service = WeatherViewModel()
//
//    func updateGoods() {
//        self.goods =  service.getWeather().goods  //.getGoods().goods
//    }
//}
