//
//  ViewController.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        APIClient.getWeatherAPI { (forecastJSON) in
            print(forecastJSON)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }



}

