//
//  DetailViewController.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var daylabel: UILabel!
    @IBOutlet weak var weatherSummaryLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var highFLabel: UILabel!
    @IBOutlet weak var highCLabel: UILabel!
    @IBOutlet weak var lowFLabel: UILabel!
    @IBOutlet weak var lowCLabel: UILabel!
    @IBOutlet weak var feelsLikeFLabel: UILabel!
    @IBOutlet weak var feelsLikeCLabel: UILabel!
    @IBOutlet weak var dewPointFLabel: UILabel!
    @IBOutlet weak var dewPointCLabel: UILabel!
    @IBOutlet weak var precipitationLabel: UILabel!
    @IBOutlet weak var uviLabel: UILabel!
    
    var dailyForecast: Forecast!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        daylabel.text = dailyForecast.dateTime
        weatherSummaryLabel.text = dailyForecast.weatherSummary
        imageView.image = UIImage(named: dailyForecast.icon)
        highFLabel.text = String(dailyForecast.maxTempF)
        highCLabel.text = String(dailyForecast.maxTempC)
        lowFLabel.text = String(dailyForecast.minTempF)
        lowCLabel.text = String(dailyForecast.minTempC)
        feelsLikeFLabel.text = String(dailyForecast.feelsLikeF)
        feelsLikeCLabel.text = String(dailyForecast.feelsLikeC)
        dewPointFLabel.text = String(dailyForecast.dewpointF)
        dewPointCLabel.text = String(dailyForecast.dewpointC)
        precipitationLabel.text = String(dailyForecast.humidity)+"%"
        if let unwrappedUVI = dailyForecast.uvi {
            uviLabel.text = String(describing: unwrappedUVI)
        }
        
    
    }

}
