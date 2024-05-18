//
//  ViewController.swift
//  UserRegisters
//
//  Created by iOS Lab on 04/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var deleteInput: UITextField!
    @IBOutlet weak var result: UITextView!
    @IBOutlet weak var maritalStatus: UITextField!
    
    let manager = UserManager()
    
    private func renderResult(names: String) {
        result.text = names
    }
    
    private func renderError(message: String) {
        let alert = UIAlertController(title: "Ocorreu um erro", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addUser(_ sender: Any) {
        guard let name = nameInput.text,
              let gender = Gender(rawValue: segmented.selectedSegmentIndex),
              let country = countryInput.text,
              let birthday = birthdayInput.text,
              let maritalStatus = maritalStatus.text,
              !name.isEmpty else {
            renderError(message: "Campos inválidos")
            return
        }
        
        let user = User(name: name, gender: gender, country: country, birthday: birthday, maritalStatus: maritalStatus)
        manager.addUser(user: user)
        
        guard let userResults = manager.getUsers() else{
            renderError(message: "Digite um ano correto para o cálculo da sua idade.")
            return
        }
    
        renderResult(names: userResults)
    }
    
    @IBAction func removeUser(_ sender: Any) {
        guard let delete = deleteInput.text,
            delete.isEmpty else {
                renderError(message: "Digite um nome correto para remover o usuário.")
                return
            }
        
        let isDeleted = manager.removeUser(name: delete)
        guard let userResults = manager.getUsers(),
              isDeleted else {
            renderError(message: "Usuário não encontrado")
            return
        }
        
        renderResult(names: userResults)
        
        }
}
