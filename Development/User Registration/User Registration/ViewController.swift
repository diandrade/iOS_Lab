//
//  ViewController.swift
//  User Registration
//
//  Created by iOSLab on 04/05/24.
//

import UIKit

class ViewController: UIViewController {
    var users: [User] = []
    
    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var genderInput: UISegmentedControl!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var resultOutput: UITextView!
    
    private func renderError() {
            let alert = UIAlertController(title: "Alert", message: "Ocorreu um erro, tente novamente.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    
    func renderUI() {
        var outputText = ""
        for (index, user) in users.enumerated() {
            guard let age = user.age else {
                renderError()
                return
            }
            
            outputText += "\(index + 1). \(user.name) é \(user.gender.rawValue.lowercased()) e tem \(age) anos\n"
        }
        resultOutput.text = outputText
    }
    
    @IBAction func addButton(_ sender: Any) {
       guard let name = nameInput.text,
             let birthday = birthdayInput.text,
             let genderTitle = genderInput.titleForSegment(at: genderInput.selectedSegmentIndex),
             let gender = Gender(rawValue: genderTitle),
             !name.isEmpty else {
            renderError()
            return
        }
        let user = User(name: name, gender: gender, birthdayDate: birthday)
        users.append(user)
        renderUI()
        nameInput.text = ""
    }
}

