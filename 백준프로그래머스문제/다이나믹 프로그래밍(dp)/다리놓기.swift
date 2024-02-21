import Foundation

//백준 1010번 https://www.acmicpc.net/problem/1010
var inputNumber = Int(readLine()!)!
var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for i in 0...30 {
    for j in 0...i {
        if i == j || j == 0  {
            dp[i][j] = 1
            continue
        }
        dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
        
    }
        
}


for _ in 0..<inputNumber {
    let split = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (r, n) = (split[0], split[1])
    print(dp[n][r])
    
}
