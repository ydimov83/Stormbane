//
//  SecondViewController.swift
//  Stormbane
//
//  Created by Yavor Dimov on 5/10/19.
//  Copyright © 2019 Yavor Dimov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkSkyAPIKeyLabel: UILabel!
    @IBOutlet weak var darkSkyAPIKeyTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkSkyAPIKeyTextField.text = Settings.apiKey
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        Settings.apiKey = darkSkyAPIKeyTextField.text ?? ""
        print("api key: \(Settings.apiKey)")
    }
    
    //MARK: - Actions
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
  
}
