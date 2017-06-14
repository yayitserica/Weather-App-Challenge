//
//  ViewController.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UItable {
    
    let store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DELETE THIS
//        APIClient.getWeatherAPI { (forecastJSON) in
//            print(forecastJSON)
//        }
        
        store.getWeather { 
            print("")
        }

    }



}

