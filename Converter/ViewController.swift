//
//  ViewController.swift
//  Converter
//
//  Created by Всеволод on 05.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureCelsius: UILabel!
    @IBOutlet weak var temperatureFahrenheit: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 50
            slider.minimumValue = -50
            slider.value = 0
        }
    }
    
    @IBAction func slideChanged(_ sender: UISlider) {
        let temperatureCe = Int(sender.value)
        temperatureCelsius.text = "\(temperatureCe)ºC"
        let temperatureFa = Int16(sender.value * 1.8 + 32)
        temperatureFahrenheit.text = "\(temperatureFa)ºF"
    }
    
    
}

