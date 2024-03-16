//
//  ViewController.swift
//  media
//
//  Created by iOS Lab on 16/03/24.
//

import UIKit

class ViewControllerSecond: UIViewController {
    @IBOutlet weak var firstNote: UITextField!
    @IBOutlet weak var secondNote: UITextField!
    @IBOutlet weak var thirdNote: UITextField!
    @IBOutlet weak var fourthNote: UITextField!

    @IBOutlet weak var average: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var type: UILabel!
    
    private func sendAlert(message: String) {
        hideFields()
        average.text = message
    }
    
    private func hideFields(value: Bool = true) {
        result.isHidden = value
        type.isHidden = value
    }
    
    private func calculateAverage(firstNote: Double, secondNote: Double, thirdNote: Double, fourthNote: Double) -> Double {
        (firstNote + secondNote + thirdNote + fourthNote) / 4
    }
    
    private func checkType(average: Double) -> String? {
        if (average >= 0 && average < 4) {
            return "Aluno abaixo da média"
        }
        if (average >= 4 && average < 5) {
            return "Aluno na média"
        }
        if (average >= 5 && average < 10) {
            return "Aluno acima da média"
        }
        return nil
    }
    
    private func checkResult(average: Double) -> String? {
        if (average >= 0 && average < 4) {
            return "Aluno reprovado"
        }
        if (average >= 4 && average < 10) {
            return "Aluno aprovado"
        }
        return nil
    }
    
    @IBAction func calculate(_ sender: Any) {
        hideFields(value: false)
        guard let firstNoteDouble = Double(firstNote.text ?? ""),
              let secondNoteDouble = Double(secondNote.text ?? ""),
              let thirdNoteDouble = Double(thirdNote.text ?? ""),
              let fourthNoteDouble = Double(fourthNote.text ?? "") else {
            sendAlert(message: "Insira um valor numerico")
            return
        }
        
        let averageReturn = calculateAverage(firstNote: firstNoteDouble, secondNote: secondNoteDouble, thirdNote: thirdNoteDouble, fourthNote: fourthNoteDouble)
        
        guard let typeReturn = checkType(average: averageReturn),
              let resultReturn = checkResult(average: averageReturn) else {
            sendAlert(message: "Insira um valor no range")
            return
        }
        
        average.text = "Sua média é \(averageReturn)"
        result.text = resultReturn
        type.text = typeReturn
    }
}
