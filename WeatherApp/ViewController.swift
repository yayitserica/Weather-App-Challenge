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
    
    @IBOutlet weak var fcControl: UISegmentedControl!
    
    let store = DataStore.sharedInstance
    var showsFahrenheit = true

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeLabel.text = "New York, 11101"
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch fcControl.selectedSegmentIndex {
        case 0:
            showsFahrenheit = true
            tableView.reloadData()
        case 1:
            showsFahrenheit = false
            tableView.reloadData()
        default:
            break
        }
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
        
        DispatchQueue.main.async {
            cell.dayLabel.text = dailyForecast.dateTime
            cell.weatherSummarylabel.text = dailyForecast.weatherSummary
        }
        
        cell.imageView?.image = UIImage(named: dailyForecast.icon)
        
        if self.showsFahrenheit {
            DispatchQueue.main.async {
                cell.highLabel.text = String(dailyForecast.maxTempF)
                cell.lowLabel.text = String(dailyForecast.minTempF)
            }
            
        } else {
            DispatchQueue.main.async {
                cell.highLabel.text = String(dailyForecast.maxTempC)
                cell.lowLabel.text = String(dailyForecast.minTempC)
            }
            
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let destination = segue.destination as? DetailViewController
            let selectedRow = tableView.indexPathForSelectedRow?.row
            destination?.dailyForecast = store.forecasts[selectedRow!]
        }
    }
    
}


