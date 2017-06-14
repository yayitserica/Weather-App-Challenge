//
//  ViewController.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var zipCodeLabel: UILabel!

    @IBOutlet weak var tableView: UITableView!
    
    let store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeLabel.text = "New York, 11101"
    }
    
    // MARK: - Table View Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "forecastCell", for: indexPath) as! ForecastTableViewCell
        let dailyForecast = store.forecasts[indexPath.row]
        cell.dayLabel.text = dailyForecast.dateTime
        cell.imageView?.image = UIImage(named: dailyForecast.icon)
        cell.highLabel.text = String(dailyForecast.maxTempF)
        cell.lowLabel.text = String(dailyForecast.minTempF)
        
        return cell
    }
    
}


