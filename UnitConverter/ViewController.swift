//
//  ViewController.swift
//  UnitConverter
//
//  Created by Clint Greive on 23/09/2014.
//  Copyright (c) 2014 Clint Greive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var fahrenheitInputTextField: UITextField!
    @IBOutlet weak var celsiusResultLabel: UILabel!
    @IBOutlet weak var celsiusInputTextField: UITextField!
    @IBOutlet weak var fahrenheitResultLable: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var convertToFahrenheitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // IBActions
    // Fahrenheit to Celsius Button
    @IBAction func convertButtonPressed(sender: UIButton) {
/*
        // Fahrenheit to Celsius
        // convert string into integer for calculation and back to string
        let tempFromFahrenheitInputTextField = fahrenheitInputTextField.text
        let numberFromFahrenheitInputTextField = tempFromFahrenheitInputTextField.toInt() // Int optional function
        var integerFromFahrenheitInputTextField = numberFromFahrenheitInputTextField! // exclamation
        let toCelsiusconversionConstant = -15
        integerFromFahrenheitInputTextField += toCelsiusconversionConstant // assign textfield to converted integer
        
        // convert integer back into string
        let stringWithUpdatedCelsiusTemp = "\(integerFromFahrenheitInputTextField)" + " degrees °C"
        celsiusResultLabel.text = stringWithUpdatedCelsiusTemp

        
        // refactored code achieves the same result as above 7 lines of code
        celsiusResultLabel.text = "\(fahrenheitInputTextField.text.toInt()! - 32)" + " degrees °C"
*/
        
        // Fahrenheit to Celsius
        // convert string into integer for calculation and back to string
        let temperatureFromFahrenheitInputTextField = Double((fahrenheitInputTextField.text as NSString).doubleValue)
        let toCelsiusConversionConstant = (((temperatureFromFahrenheitInputTextField - 32) * 0.5556) - temperatureFromFahrenheitInputTextField)
        celsiusResultLabel.text = "\(temperatureFromFahrenheitInputTextField + toCelsiusConversionConstant)" + " degrees °C"
        
        // asthetic code to evaluate
        celsiusResultLabel.hidden = false
        celsiusResultLabel.textColor = UIColor.whiteColor()
        fahrenheitInputTextField.resignFirstResponder()
        convertButton.setTitle("Converted", forState: UIControlState.Normal)
        convertButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    }
    
    // Celsius to Fahrenheit Button
    @IBAction func convertToFahrenheitButtonPressed(sender: UIButton) {
        
        // Celsius to Fahrenheit
        // convert string into integer for calculation and back to string
        let temperatureFromCelsiusInputTextField = Double((celsiusInputTextField.text as NSString).doubleValue)
        let toFahrenheitConversionConstant = (((temperatureFromCelsiusInputTextField * 1.8) + 32) - temperatureFromCelsiusInputTextField)
        fahrenheitResultLable.text = "\(temperatureFromCelsiusInputTextField + toFahrenheitConversionConstant)" + " degrees °F"
        
        // asthetic code to evaluate
        fahrenheitResultLable.hidden = false
        fahrenheitResultLable.textColor = UIColor.whiteColor()
        celsiusInputTextField.resignFirstResponder()
        convertToFahrenheitButton.setTitle("Converted", forState: UIControlState.Normal)
        convertToFahrenheitButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    }
    
    // Fahrenheit to Celsius Reset Button
    @IBAction func fahrenheitToCelsiusResetButtonPressed(sender: UIButton) {
        fahrenheitInputTextField.text = ""
        celsiusResultLabel.text = ""
        convertButton.setTitle("Convert to Celsius", forState: UIControlState.Normal)
        convertButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    // Celsius to Fahrenheit Reset Button
    @IBAction func celsiusToFahrenheitResetButtonPressed(sender: UIButton) {
        celsiusInputTextField.text = ""
        fahrenheitResultLable.text = ""
        convertToFahrenheitButton.setTitle("Convert to Fahrenheit", forState: UIControlState.Normal)
        convertToFahrenheitButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
}

