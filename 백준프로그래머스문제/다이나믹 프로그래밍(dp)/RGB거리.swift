import Foundation

// 백준 1149번 https://www.acmicpc.net/problem/1149

var inputNumber = Int(readLine()!)!
var map : [[Int]] = Array(repeating: [0,0,0], count: inputNumber+1)
var dp : [[Int]] = Array(repeating: [0,0,0], count: inputNumber+1)

for i in 1..<inputNumber+1 {
    map[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 1..<inputNumber+1 {
        dp[i][0] = min(dp[i-1][1] , dp[i-1][2]) + map[i][0]
        dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + map[i][1]
        dp[i][2] = min(dp[i-1][0] , dp[i-1][1]) + map[i][2]
}

print(dp[inputNumber].min()!)
 