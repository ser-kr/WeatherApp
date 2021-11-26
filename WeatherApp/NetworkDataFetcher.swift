//
//  NetworkDataFetcher.swift
//  WeatherApp
//
//  Created by SK on 25.11.2021.
//

import Foundation
class NetworkDataFetcher {
    
    let networkService = NetworkService()
    
    func fetchTracks(urlString: String, response: @escaping (WeatherModel?) -> Void) {
        networkService.request(urlString: urlString) { (result) in
            switch result {
            case .success(let data):
                do {
                    let tracks = try JSONDecoder().decode(WeatherModel.self, from: data)
                    response(tracks)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                    response(nil)
                }
            case .failure(let error):
                print("Error received requesting data: \(error.localizedDescription)")
                response(nil)
            }
        }
    }
}
