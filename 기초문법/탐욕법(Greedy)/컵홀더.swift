import Foundation

//func readLine(strippingNewline : Bool = true) -> String?

var answerList : [Int] = []

var answer : Int = 0
//let input = readLine()!
//let inputArray = input.split(separator: " ").map{Int(String($0))!}
//var inputList = readLine()!.split(separator : " ").map{Int(String($0))!}



let inputNumber = Int(readLine()!)!
let inputString = String(readLine()!)

var leftNumber = 0
var rightNumber = 0

var lCount = 0
var sCount = 0


for i in inputString {
    if(i == "L"){
        lCount += 1
    }
}

leftNumber = inputNumber
rightNumber =  (inputNumber + 1) - (lCount / 2)

print(min(leftNumber, rightNumber))
