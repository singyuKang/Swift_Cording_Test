import Foundation

//백준 9461번 https://www.acmicpc.net/problem/9461

var inputNuber = Int(readLine()!)!
var dp : [Int] = Array(repeating: 0, count: 101)

dp[1] = 1
dp[2] = 1
dp[3] = 1
dp[4] = 2
dp[5] = 2

for i in 6...100 {
    dp[i] = dp[i-2] + dp[i-3]
}

for _ in 0..<inputNuber {
    var idx = Int(readLine()!)!
    print(dp[idx])
}