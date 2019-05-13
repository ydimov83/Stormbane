//
//  WeatherForecastCell.swift
//  Stormbane
//
//  Created by Yavor Dimov on 5/13/19.
//  Copyright © 2019 Yavor Dimov. All rights reserved.
//

import UIKit

class WeatherForecastCell: UITableViewCell {

    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var summary: UILabel!
    @IBOutlet weak var lowValue: UILabel!
    @IBOutlet weak var highValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(for forecast: DataPoint) {
        summary.text = forecast.summary!
        lowValue.text = "\(forecast.temperatureLow!)"
        highValue.text = "\(forecast.temperatureHigh!)"
    }

}
