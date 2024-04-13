//
//  ViewController.swift
//  Fruits
//
//  Created by iOS Lab on 06/04/24.
//

import UIKit

class ViewController: UIViewController {
    var fruits: [String: Bool] = [:]
    
    @IBOutlet weak var inputFruit: UITextField!
    @IBOutlet weak var withLamp: UISwitch!
    @IBOutlet weak var withoutLamp: UISwitch!
    @IBOutlet weak var searchFruit: UITextField!
    @IBOutlet weak var lampControl: UISegmentedControl!
    @IBOutlet weak var outputFruit: UITextView!
    
    private func checkSeed(title: String) -> Bool {
        title.contains("Com")
    }
    
    private func renderUI(fruits collection: [String: Bool]? = nil) {
        let collectionFruits: [String: Bool] = collection ?? fruits
        var outputText = ""
        for (index, fruit) in collectionFruits.enumerated() {
            outputText = outputText + "Fruta \(index): \(fruit.key) \n"
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
              !fruits.keys.contains(fruit) else {
            renderError()
            return
        }
        fruits.updateValue(checkSeed(title: lampControl.titleForSegment(at: lampControl.selectedSegmentIndex) ?? ""), forKey: fruit.lowercased())
        renderUI()
    }
    
    @IBAction func remove(_ sender: Any) {
        guard let fruit = inputFruit.text,
                let index = fruits.index(forKey: fruit.lowercased()) else {
            renderError()
            return
        }
        fruits.remove(at: index)
        renderUI()
    }
    
    @IBAction func search(_ sender: Any) {
        guard let searchFruit = searchFruit.text else {
            renderError()
            return
        }
        
        var searchFruits: [String: Bool] = [:]
        
        if withLamp.isOn {
            let filteredFruits = fruits.filter { (key: String, value: Bool) in
                value == true
            }
            
            searchFruits.merge(filteredFruits) { _, _ in
                false
            }
        }
        
        if withoutLamp.isOn {
            let filteredFruits = fruits.filter { (key: String, value: Bool) in
                value == false
            }
            
            searchFruits.merge(filteredFruits) { _, _ in
                false
            }
        }
        
        if !searchFruit.isEmpty {
            let filteredFruits = searchFruits.filter { (key: String, value: Bool) in
                key.contains(searchFruit.lowercased())
            }
            
            searchFruits = filteredFruits
        }
        
        renderUI(fruits: searchFruits)
    }
    
}
    

