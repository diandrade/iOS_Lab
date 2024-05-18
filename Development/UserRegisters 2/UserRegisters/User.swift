//
//  User.swift
//  UserRegisters
//
//  Created by iOS Lab on 04/05/24.
//

import Foundation

enum Gender: Int {
    case masculine
    case feminine
    
    func getValue() -> String {
        switch self {
        case .masculine:
            "masculino"
        case .feminine:
            "feminino"
        }
    }
}

struct User {
    let name: String
    let gender: Gender
    let country: String
    let birthday: String
    let maritalStatus: String
    var age: Int? {
        guard let birthdayYear = Int(birthday.split(separator: "/").last ?? "") else {
            return nil
        }
        return Calendar.current.component(.year, from: Date()) - birthdayYear
    }
}
