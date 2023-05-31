import Foundation



let inputNumber = Int(readLine()!)!
let inputArray = readLine()!.split(separator : " ").map{Int(String($0))!}

var milkIndex = 0
var milkArray : [Int] = [0,1,2]
var answer = 0

for i in inputArray {
    if i == milkArray[milkIndex] {
        milkIndex += 1
        milkIndex = milkIndex % 3
        answer += 1
    }
}

print(answer)