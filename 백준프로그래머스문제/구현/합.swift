import Foundation

//백준 8393번
var n = Int(readLine()!)!
var answer = 0

for i in 1..<n+1 {
    answer += i
}

print(answer)