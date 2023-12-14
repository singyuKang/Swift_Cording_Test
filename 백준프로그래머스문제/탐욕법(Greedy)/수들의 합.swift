import Foundation

// 백준 1789번
let n = Int(readLine()!)!

//var inputList = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = 0

var sum = 0

for number in 1...n {
    sum += number
    
    if sum == n {
        answer = number
        break
    }else if sum > n {
        answer = number-1
        break
    }
}

print(answer)