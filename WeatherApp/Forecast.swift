//
//  Forecast.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import Foundation

struct Forecast {
    var maxTempC: Int
    var maxTempF: Int
    var minTempC: Int
    var minTempF: Int
    var dateTime: String
    var weatherSummary: String
    var icon: String
    
    init(dictionary: [String: Any]) {
        self.maxTempC = dictionary["maxTempC"] as! Int
        self.maxTempF = dictionary["maxTempF"] as! Int
        self.minTempC = dictionary["minTempC"] as! Int
        self.minTempF = dictionary["minTempF"] as! Int
        
        let isoDateString = dictionary["dateTimeISO"] as! String
        let inputArray = isoDateString.components(separatedBy: "-")
        let year = inputArray[0]
        let month = inputArray[1]
        var dayString = inputArray[2]
        let day = String(dayString.characters.prefix(2))
        
        self.dateTime = "\(month)-\(day)-\(year)"
        self.weatherSummary = dictionary["weatherPrimary"] as! String
        self.icon = dictionary["icon"] as! String
    }
    
}
