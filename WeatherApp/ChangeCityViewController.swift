//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Jędrzej Chołuj on 20/07/2019.
//  Copyright © 2019 Jędrzej Chołuj. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(_ cityName: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
    @IBOutlet weak var getWeatherButton: UIButton!
    
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        let cityName = changeCityTextField.text!
        delegate?.userEnteredANewCityName(cityName)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeCityTextField.attributedPlaceholder = NSAttributedString(string: "Enter city name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        changeCityTextField.layer.borderWidth = 1
        changeCityTextField.layer.borderColor = UIColor.white.cgColor
        getWeatherButton.layer.borderWidth = 1
        getWeatherButton.layer.borderColor = UIColor.white.cgColor
    }
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
