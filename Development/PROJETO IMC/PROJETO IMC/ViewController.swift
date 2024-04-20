//
//  ViewController.swift
//  Projeto Imc
//
//  Created by iOSLab on 20/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heigth: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var weigth: UITextField!
    
    
    @IBAction func calculate(_ sender: Any) {
        
        guard let weight = Double(weigth.text ?? ""),
              let height = Double(heigth.text ?? "") else {
            //
            return
        }
        
        let imc = weight/(height*height)
        result.text = "O seu IMC é \(String(format:"%.2f", imc))"
        
        var categoryResult: String? {
            switch imc {
            case ..<16.9:
                return "Muito abaixo do peso."
            case 17...18.4:
                return "Abaixo do peso."
            case 18.5...24.9:
                return "Peso normal."
            case 25...29.9:
                return "Acima do peso."
            case 30...34.9:
                return "Obesidade grau I."
            case 35...40:
                return "Obesidade grau II."
            case 40...:
                return "Obesidade grau III"
            default:
                return nil
            }
        }
        
        category.text = categoryResult ?? ""
    }
}

