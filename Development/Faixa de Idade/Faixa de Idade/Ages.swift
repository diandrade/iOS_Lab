//
//  Ages.swift
//  Faixa de Idade
//
//  Created by iOSLab on 27/04/24.
//

import Foundation

enum Ages : String {
    case firstInfance = "Primeira Infancia."
    case secondInfance = "Segunda Infancia."
    case preTeen = "Pré-Adolescencia."
    case teen = "Adolescencia."
    case postTeen = "Pós-Adolescencia."
    case adult = "Adultilidade."
    case middleAge = "Meia Idade."
    case thirdAge = "Terceira Idade."
    
    static func ageType(age : Int) -> Ages? {
        switch age {
            case 2...4:
            return .firstInfance
            
            case 5...10:
            return .secondInfance
                
            case 11...15:
            return .preTeen
                
            case 16...20:
            return .teen
                
            case 21...26:
            return .postTeen
                
            case 27...40:
            return .adult
                
            case 41...65:
            return .middleAge
                
            case 66...80:
            return .thirdAge
            
            default:
                return nil
            }
        }
    }
