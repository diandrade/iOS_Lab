//
//  ViewController.swift
//  CalculatorVisual
//
//  Created by iOSLab on 24/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number1: UITextField!
    
    func numberToFloat (_ numberStr: String) -> Float {
        Float(numberStr)!
        
    }
    
    @IBAction func sum(_ sender: Any) {
        
        let calc = numberToFloat(number1.text!) + numberToFloat(number2.text!)
        result.text = "A soma é \(calc)"
        
    }
    
    @IBAction func mult(_ sender: Any) {

    }
    @IBAction func div(_ sender: Any) {

    }
    @IBAction func sub(_ sender: Any) {

    }
    
}

