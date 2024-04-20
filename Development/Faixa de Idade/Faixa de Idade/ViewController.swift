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
        
        guard let age = Int(ageInput.text ?? "") else {
            return
        }
        
        resultOutput.text = "A sua faixa etária é \(String(age))"
        
        var ageRange: String? {
            switch age {
            case 2...4:
                return "Primeira Infancia."
                
            case 5...10:
                return "Segunda Infancia."
                
                
            case 11...15:
                return "Pré-Adolescencia."
                
                
            case 16...20:
                return "Adolescencia."
                
                
            case 21...26:
                return "Pós-Adolescencia."
                
                
            case 27...40:
                return "Adultilidade."
                
                
            case 41...65:
                return "Meia Idade."
                
                
            case 66...80:
                return "Terceira Idade."
                
            default:
                return nil
                
            }
        }
        
        resultOutput.text = ageRange ?? ""
    }

}

