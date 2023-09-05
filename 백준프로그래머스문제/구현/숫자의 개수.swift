import Foundation


//백준 2577번 숫자의 개수
var inputList : [Int] = []
var value = 1
var valueString = ""
var numberList : [Int] = Array(repeating: 0, count: 10)


for _ in 0..<3 {
    inputList.append(Int(readLine()!)!)
}

for i in inputList {
    value *= i
}

valueString = String(value)

for i in valueString {
    var index = Int(String(i))!
    numberList[index] += 1
}

for i in numberList {
    print(i)
}