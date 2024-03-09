//
//  ViewController.swift
//  PROJETO IMC
//
//  Created by iOSLab on 02/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weight: UITextField! //peso
    @IBOutlet weak var height: UITextField! //altura
    @IBOutlet weak var result: UILabel! //resultado
    
    
    @IBAction func calc(_ sender: Any) {
        
        guard let heightText = height.text else {
            return
        }
        
        guard let widthText: String = weight.text else {
            return
        }
        
        guard let height: Double = Double(heightText) else {
            return
        }
        guard let width: Double = Double(widthText) else {
            return
        }
        
        let imc = width / (height * height)
        
        
        
        result.text = "O resultado é \(imc))"
    }
    
    /*let name: String? = nil
     
     func guardLet() {
         guard let nameGuardWrap = name else {
             return
         }
         print(nameGuardWrap)*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

