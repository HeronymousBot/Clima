//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Lorenzo Fonseca on 22/06/2019.

import UIKit


protocol ChangeCityDelegate{
    func userEnteredANewCity(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!


    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        let cityName = changeCityTextField.text!
        

        delegate?.userEnteredANewCity(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
