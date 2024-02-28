import Foundation

//백준 11727번 https://www.acmicpc.net/problem/11727
var inputNumber = Int(readLine()!)!
var dp : [Int] = Array(repeating : 0, count : 1001)

if inputNumber == 1 {
    print(1)
}else if inputNumber == 2 {
    print(3)
}else {
    dp[1] = 1
    dp[2] = 3
    for i in 3...inputNumber {
        dp[i] = (dp[i-1] + 2 * dp[i-2]) % 10007
    }

    print(dp[inputNumber])
    
}