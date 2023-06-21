import Foundation

//백준 11720번

var n = Int(readLine()!)!
var input = String(readLine()!).map({Int(String($0))!})
var answer = 0

for i in input {
    answer += i
}

print(answer)