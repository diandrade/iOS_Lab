//
//  ViewController.swift
//  Faixa de Idade
//
//  Created by iOSLab on 20/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultOutput: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    
    @IBAction func verify(_ sender: Any) {
        guard let age = Int(ageInput.text ?? ""),
        let userAge = Ages.ageType(age: age) else {
            resultOutput.text = "Digite um número"
            return
        }
        resultOutput.text = userAge.rawValue
    }
}

