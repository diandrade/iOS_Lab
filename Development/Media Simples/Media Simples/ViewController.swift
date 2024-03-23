//
//  ViewController.swift
//  Media Simples
//
//  Created by iOSLab on 16/03/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nota4: UITextField!
    @IBOutlet weak var nota3: UITextField!
    @IBOutlet weak var nota2: UITextField!
    @IBOutlet weak var nota1: UITextField!
    
    @IBOutlet weak var avarage: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var result: UILabel!
    
    
    
    @IBAction func calculate(_ sender: Any) {
        
        guard let nota1Double: Double = Double(nota1.text ?? ""),
              let nota2Double: Double = Double(nota2.text ?? ""),
              let nota3Double: Double = Double(nota3.text ?? ""),
              let nota4Double: Double = Double(nota4.text ?? "") else {
                    return
        }
        
        let notes = [nota1Double, nota2Double, nota3Double, nota4Double]
        
        var sum: Double = 0
        
        for note in notes {
            sum = sum + note
        }
        let media = sum/Double(notes.count)
        
        if (media < 4) {
            
            avarage.text = "A média é \(media)"
            type.text = "O resultado foi abaixo da média"
            result.text = "Você foi reprovado"
            
        } else if (media == 5) {
            
            avarage.text = "A média é \(media)"
            type.text = "O resultado está na média"
            result.text = "Você foi aprovado"
            
        } else {
            
            avarage.text = "A média é \(media))"
            type.text = "O resultado está acima da média"
            result.text = "Você foi aprovado"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

