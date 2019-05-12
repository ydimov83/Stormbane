//
//  FirstViewController.swift
//  Stormbane
//
//  Created by Yavor Dimov on 5/10/19.
//  Copyright © 2019 Yavor Dimov. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    //Denver
    var latitude = "39.7529908"
    var longitude = "-104.991349"
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var currentWeatherValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    func performSearch(url: URL) -> Data? {
        do {
            return try Data(contentsOf: url)
        } catch {
            showNetworkError()
            print("Download Error: \(error.localizedDescription)")
            return nil
        }
    }
   
    //MARK: - Actions
    @IBAction func locations() {
        let url = darkSkyURL()
        if let data = performSearch(url: url) {
            let forecast = parse(data: data)
            currentWeatherValueLabel.text = "\(forecast!.currently!.temperature!)"
            print("Got forecast: \(forecast!.currently!.temperature!)")
        }
    }
    
    // MARK:- Helper Methods
    func darkSkyURL() -> URL {
        let urlString =
            String(format: "https://api.darksky.net/forecast/%@/%@,%@", Settings.apiKey, latitude, longitude)
        let url = URL(string: urlString)
        return url!
    }
    
    func parse(data: Data) -> WeatherForecast? {
        do {
            let decoder = JSONDecoder()
            let forecast = try decoder.decode(WeatherForecast.self, from:data)
            return forecast
        } catch {
            print("JSON Error: \(error)")
            return nil
        }
    }
    
    func showNetworkError() {
        let alert = UIAlertController(title: "Whoops...", message: "There was an error accessing the Dark Sky API. Please try again", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}
