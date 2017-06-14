//
//  Forecast.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import Foundation

struct Forecast {
    var maxTempC: Int?
    var maxTempF: Int?
    var minTempC: Int?
    var minTempF: Int?
    var dateTime: String?
    var icon: String?
    
    init(dictionary: [String: Any]) {
        self.maxTempC = dictionary["maxTempC"] as? Int
        self.maxTempF = dictionary["maxTempF"] as? Int
        self.minTempC = dictionary["minTempC"] as? Int
        self.minTempF = dictionary["minTempF"] as? Int
        //CONVERT THIS TO A READABLE DATE
        self.dateTime = dictionary["dateTimeISO"] as? String
        self.icon = dictionary["icon"] as? String
    }
    
}

/*
{
    timestamp: 1497438000,
    validTime: "2017-06-14T07:00:00-04:00",
    dateTimeISO: "2017-06-14T07:00:00-04:00",
    maxTempC: 27,
    maxTempF: 81,
    minTempC: 17,
    minTempF: 63,
    avgTempC: 22,
    avgTempF: 72,
    tempC: null,
    tempF: null,
    pop: 9,
    precipMM: 1.18,
    precipIN: 0.05,
    iceaccum: 0,
    maxHumidity: 76,
    minHumidity: 34,
    humidity: 52,
    uvi: 10,
    pressureMB: 1015,
    pressureIN: 29.97,
    sky: 36,
    snowCM: 0,
    snowIN: 0,
    feelslikeC: 22,
    feelslikeF: 72,
    minFeelslikeC: 22,
    minFeelslikeF: 72,
    maxFeelslikeC: 27,
    maxFeelslikeF: 81,
    avgFeelslikeC: 25,
    avgFeelslikeF: 77,
    dewpointC: 16,
    dewpointF: 61,
    maxDewpointC: 17,
    maxDewpointF: 63,
    minDewpointC: 13,
    minDewpointF: 55,
    avgDewpointC: 14,
    avgDewpointF: 57,
    windDirDEG: 40,
    windDir: "NE",
    windDirMaxDEG: 150,
    windDirMax: "SSE",
    windDirMinDEG: 100,
    windDirMin: "E",
    windGustKTS: 10,
    windGustKPH: 18,
    windGustMPH: 11,
    windSpeedKTS: 8,
    windSpeedKPH: 14,
    windSpeedMPH: 9,
    windSpeedMaxKTS: 9,
    windSpeedMaxKPH: 17,
    windSpeedMaxMPH: 10,
    windSpeedMinKTS: 3,
    windSpeedMinKPH: 5,
    windSpeedMinMPH: 3,
    windDir80mDEG: 43,
    windDir80m: "NE",
    windDirMax80mDEG: 150,
    windDirMax80m: "SSE",
    windDirMin80mDEG: 100,
    windDirMin80m: "E",
    windGust80mKTS: 13,
    windGust80mKPH: 24,
    windGust80mMPH: 15,
    windSpeed80mKTS: 11,
    windSpeed80mKPH: 20,
    windSpeed80mMPH: 12,
    windSpeedMax80mKTS: 13,
    windSpeedMax80mKPH: 24,
    windSpeedMax80mMPH: 15,
    windSpeedMin80mKTS: 8,
    windSpeedMin80mKPH: 15,
    windSpeedMin80mMPH: 9,
    weather: "Partly Cloudy",
    weatherCoded: [ ],
    weatherPrimary: "Partly Cloudy",
    weatherPrimaryCoded: "::SC",
    cloudsCoded: "SC",
    icon: "pcloudy.png",
    isDay: true,
    sunrise: 1497432230,
    sunriseISO: "2017-06-14T05:23:50-04:00",
    sunset: 1497486522,
    sunsetISO: "2017-06-14T20:28:42-04:00"
}
 */
