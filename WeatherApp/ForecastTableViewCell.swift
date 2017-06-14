//
//  ForecastTableViewCell.swift
//  WeatherApp
//
//  Created by Erica Millado on 6/14/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

    @IBOutlet weak var forecastImage: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var weatherSummarylabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
