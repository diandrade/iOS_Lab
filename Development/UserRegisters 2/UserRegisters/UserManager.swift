//
//  UserManager.swift
//  UserRegisters
//
//  Created by iOSLab on 18/05/24.
//

import Foundation

class UserManager {
    
    var users: [User] = []

    func addUser(user: User) {
        users.append(user)
    }
    
    func removeUser(name: String) -> Bool {
        
        guard let userIndex = users.firstIndex(where: {$0.name == name}) else {
            return false
        }
        
        users.remove(at: userIndex)
        return true
        
    }

    func getUsers() -> String? {
        var result: String = ""
        for (index, user) in users.enumerated() {
            guard let age = user.age else {
                users.remove(at: index)
                return nil
            }
            result += "\(index + 1). \(user.name) tem \(age) anos\n É \(user.maritalStatus) e é \(user.country) \n"
        }
        return result
    }
    
}

