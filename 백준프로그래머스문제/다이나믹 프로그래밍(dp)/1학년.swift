import Foundation

//백준 5557번 https://www.acmicpc.net/problem/5557
var inputNumber = Int(readLine()!)!
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: 21), count: 101)
dp[0][arr[0]] = 1

for i in 1..<inputNumber {
    for j in 0...20 {
        if dp[i-1][j] > 0 {
            if j+arr[i] <= 20 {
                dp[i][j+arr[i]] += dp[i-1][j]
            }
            
            if j-arr[i] >= 0 {
                dp[i][j-arr[i]] += dp[i-1][j]
            }
        }
    }
}

print(dp[inputNumber-2][arr[inputNumber-1]])