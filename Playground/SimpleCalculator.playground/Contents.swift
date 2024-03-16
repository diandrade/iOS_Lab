import UIKit
///var n1 : String = "2.5"///var n2 : String = "7.5"
//
//var n1ToDouble : Double = Double(n1) ?? 0
//var n2ToDouble : Double = Double(n2) ?? 0
//
//let sum : Double = n1ToDouble + n2ToDouble
//let sub : Double = n1ToDouble - n2ToDouble
//let div : Double = n1ToDouble / n2ToDouble
//let mult : Double = n1ToDouble * n2ToDouble
//
//var result : String = "O resultado é \(sum)"
//print(result)
//
//func sum (n1 : Int , n2 : Int) -> Int {
//    return n1 + n2
//}
//
//func sub (n1 : Int , n2 : Int) -> Int {
//    return n1 - n2
//}
//
//func div (n1 : Int , n2 : Int) -> Int {
//    return n1 / n2
//}
//
//func mult (n1 : Int , n2 : Int) -> Int {
//    return n1 * n2
//}
//
//print(sum(n1:10, n2:20))
//print(sub(n1:10, n2:20))
//print(div(n1:10, n2:20))
//print(mult(n1:10, n2:20))

//let n1:Int = 10
//let n2:Int = 2
//
//func soma () -> Int {
//    n1 + n2
//}
//print(soma())
//
//func sub () -> Int {
//    n1 - n2
//}
//print(sub())
//
//func div () -> Int {
//    n1 / n2
//}
//print(div())
//
//func mult () -> Int {
//    n1 * n2
//}
//print(mult())
//
let numbers = [2,9,5] //high Order Functions
print(numbers.reduce(0) {$0 + $1})
