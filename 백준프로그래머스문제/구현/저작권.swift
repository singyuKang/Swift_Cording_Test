import Foundation
//import Combine


//func readLine(strippingNewline : Bool = true) -> String?

//백준 2914번
let input = readLine()!

//var n = Int(readLine()!)!
let inputArray = input.split(separator: " ").map{Int(String($0))!}
//let inputArray = input.split(separator: " ").map{String($0)}

//let firstValue = n


//var arr = Array(repeating: Array(repeating: 0, count : 2), count: n)
//var rankArr = Array(repeating: 1, count: n)
//readLine()!.split(separator : " ").map{Int($0)!}

//print(inputArray[0] + inputArray[1])

//for _ in 0..<n {
//    arr.append(String(readLine()!))
//}


//let input = String(readLine()!)

//var inputArray = input.split(separator: " ").map { Int(String($0))! }.sorted(by: <)

print(inputArray[0] * inputArray[1] - (inputArray[0]-1))
