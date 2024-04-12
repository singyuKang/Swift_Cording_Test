import Foundation

//백준 2470번 https://www.acmicpc.net/problem/2470
var arrCount = Int(readLine()!)!
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var left = 0
var right = arrCount-1
var answer = Int.max
var answerLeft = 0
var answerRight = 0


while left < right {
    
    let sum = arr[left] + arr[right]
    
    if abs(sum) < answer {
        answerLeft = arr[left]
        answerRight = arr[right]
        answer = abs(sum)
    }
    
    if sum < 0 {
        left += 1
    }else{
        right -= 1
    }
}

print(String(answerLeft), String(answerRight))