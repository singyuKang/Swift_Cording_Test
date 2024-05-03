import Foundation

//백준 2293번 https://www.acmicpc.net/problem/2293
var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var (arrCount, target) = (input[0], input[1])
var arr: [Int] = []
var dp : [Int] = Array(repeating: 0, count: target+1)
var answer = 0

dp[0] = 1

for _ in 0..<arrCount {
    arr.append(Int(readLine()!)!)
}

for coin in arr {
    if target >= coin {
        for i in coin...target {
            dp[i] += dp[i-coin]
            if dp[i] >= 2_147_483_648 {
                dp[i] = 0
            }
        }
    }
}
print(dp[target])