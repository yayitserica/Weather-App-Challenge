//
//  DataStore.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import Foundation

final class DataStore {
    
    static let sharedInstance = DataStore()
    fileprivate init() {}
    
    var forecasts: [Forecast] = []
    
    func getWeather(completion: @escaping () -> Void) {
        APIClient.getWeatherAPI { (forecastJSON) in
            let response = forecastJSON?["response"] as? [[String: Any]]
            let weeklyForecast = response?[0]
            let periodsArray = weeklyForecast?["periods"] as? [[String: Any]]

            if let unwrappedPeriodsArray = periodsArray {
                for dayDict in unwrappedPeriodsArray {
                    let newForecast = Forecast(dictionary: dayDict)
                    self.forecasts.append(newForecast)
                    print(self.forecasts)
                }
            }
        }
    }
}
