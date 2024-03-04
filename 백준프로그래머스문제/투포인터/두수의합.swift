import Foundation

// 백준 3273반 https://www.acmicpc.net/problem/3273
var n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
var x = Int(readLine()!)!

var left = 0
var right = n-1
var answer = 0

while left < right {
    
    let leftValue = arr[left]
    let rightValue = arr[right]
    
    
    if x == leftValue + rightValue {
        right -= 1
        left += 1
        answer += 1
    }else if x < leftValue + rightValue {
        right -= 1
    }else{
        left += 1
    }

}

print(answer)