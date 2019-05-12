//
//  WeatherForecast.swift
//  Stormbane
//
//  Created by Yavor Dimov on 5/12/19.
//  Copyright © 2019 Yavor Dimov. All rights reserved.
//

import Foundation

class DataPoint: Codable {
    var time: Int?
    var summary: String?
    var temperatureHigh: Double?
    var temperatureLow: Double?
}

class CurrentlyForecast: Codable {
    var time: Int?
    var summary: String?
    var temperature: Double?
}

class DailyForecast: Codable {
    var data: [DataPoint]
}

class WeatherForecast: Codable {
    var currently: CurrentlyForecast?
    var daily: DailyForecast?
}
