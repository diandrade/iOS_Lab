import UIKit
//
//var name : String = "Paulo"
//
//if (name.count > 5){
//    if(name.first?.isUppercase == true){
//            print("1 digito é maiúsculo")
//    }else{
//        if (name.first == "a"){
//            print("1 dígito é minúsculo e tem a letra A")
//        }else {
//            print("1 dígito é minusculo e é diferente de A")
//        }
//    }
//    
//    
//}else{
//    print("Menor ou igual a 5 digítos")
//}

let id:Int = 19
var sBase:Double = 5000.00

if (id <= 18){
    print("Erro")
}

if (id > 18 && id <= 22){
    sBase *= 0.50
    print(sBase)
}

if (id > 23 && id <= 35){
    sBase *= 0.70
    print(sBase)
}

if (id > 36 && id <= 49){
    sBase *= 0.90
    print(sBase)
}

if (id > 50){
    print(sBase)
}












