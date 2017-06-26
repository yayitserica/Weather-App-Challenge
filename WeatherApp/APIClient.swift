//
//  APIClient.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import Foundation

typealias ForecastJSON = [String: Any]

struct APIClient {
    
    static func getWeatherAPI(completion: @escaping (ForecastJSON?) -> Void) {
        
        let url = URL(string: "http://api.aerisapi.com/forecasts/\(Secrets.zipCode)?client_id=\(Secrets.accessID)&client_secret=\(Secrets.secretKey)")
        
        let session = URLSession.shared
        
        guard let unwrappedURL = url else { print("Error unwrapping URL"); return }
        
        let dataTask = session.dataTask(with: unwrappedURL) { (data, response, error) in
            
            guard let unwrappedDAta = data else { print("Error unwrapping data"); return }
            
            do {
                let responseJSON = try JSONSerialization.jsonObject(with: unwrappedDAta, options: []) as? ForecastJSON
                completion(responseJSON)
            } catch {
                print("Could not get API data. \(error), \(error.localizedDescription)")
            }
        }
        dataTask.resume()
    }
}
