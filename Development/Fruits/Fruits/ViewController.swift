//
//  ViewController.swift
//  Fruits
//
//  Created by iOS Lab on 06/04/24.
//

import UIKit

class ViewController: UIViewController {
    var fruits: [String] = []
    
    @IBOutlet weak var inputFruit: UITextField!
    @IBOutlet weak var outputFruit: UITextView!
    
    private func renderUI() {
        var outputText = ""
        for (index, fruit) in fruits.enumerated() {
            outputText = outputText + "Fruta \(index): \(fruit) \n"
        }
        outputFruit.text = outputText
    }
    
    private func renderError() {
        let alert = UIAlertController(title: "Alert", message: "Ocorreu um erro, tente novamente.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func add(_ sender: Any) {
        guard let fruit = inputFruit.text,
              !fruit.isEmpty,
              !fruits.contains(fruit) else {
            renderError()
            return
        }
        fruits.append(fruit)
        renderUI()
    }
    
    @IBAction func remove(_ sender: Any) {
        guard let fruit = inputFruit.text, 
              let index = fruits.firstIndex(of: fruit) else {
            renderError()
            return
        }
        fruits.remove(at: index)
        renderUI()
    }
}
