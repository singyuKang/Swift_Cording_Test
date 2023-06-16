
import Foundation

//백준 11399번
var answerList : [Int] = []

var answer : Int = 0


var n = Int(readLine()!)!
var inputList = readLine()!.split(separator : " ").map{Int(String($0))!}.sorted(by: <)
var temp = 0
for i in inputList {
    answer += i + temp
    temp += i
}

print(answer)

