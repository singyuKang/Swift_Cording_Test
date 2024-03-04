import Foundation

// 백준 10844번 https://www.acmicpc.net/problem/10844
var inputNumber = Int(readLine()!)!
var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: 101)
var answer : Int = 0

for i in 0...9 {
    dp[1][i] = 1
}

if inputNumber > 1 {
    for k in 2...100 {
        
        for j in 0...9 {
            
            if j == 0 {
                dp[k][j] = dp[k-1][j+1] % 1000000000
            }else if j == 9 {
                dp[k][j] = dp[k-1][j-1] % 1000000000
            }else{
                dp[k][j] = (dp[k-1][j-1] + dp[k-1][j+1]) % 1000000000
            }
        }
    }
}

for i in 1...9 {
    answer = (answer + dp[inputNumber][i]) % 1000000000
}

print(answer)