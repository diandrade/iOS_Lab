//
//  User.swift
//  User Registration
//
//  Created by iOS Lab on 11/05/24.
//

import Foundation

enum Gender: String {
    case masculine = "Masculino"
    case feminine = "Feminino"
}

struct User {
    let name: String
    let gender: Gender
    let birthdayDate: String
    var age: Int? {
        guard let birthdayYear = Int(birthdayDate.split(separator: "/").last ?? "") else {
            return nil
        }
        return Calendar.current.component(.year, from: Date()) - birthdayYear
    }
}
