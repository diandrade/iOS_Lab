//
//  ViewController.swift
//  User Registration
//
//  Created by iOSLab on 04/05/24.
//

import UIKit

class ViewController: UIViewController {
    var users: [String] = []
    
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var nameOutput: UITextView!
    
    private func renderError() {
            let alert = UIAlertController(title: "Alert", message: "Ocorreu um erro, tente novamente.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    
    func renderUI() {
        var outputText = ""
        for (index,user) in users.enumerated(){
            outputText += "\(index + 1). \(user)\n"
        }
        nameOutput.text = outputText
    }
    
    @IBAction func addButton(_ sender: Any) {
        guard let user = nameInput.text,
              !user.isEmpty
                else {
            renderError()
            return
        }
        users.append(user)
        renderUI()
        nameInput.text = ""
    }
    
    //Default
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

