import Foundation

//백준 14501번 https://www.acmicpc.net/problem/14501
var inputNumber = Int(readLine()!)!
var arr : [[Int]] = Array(repeating: [0,0], count: inputNumber)
var dp : [Int] = Array(repeating: 0, count: 50)


for idx in 0..<inputNumber {
    arr[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
}


for i in stride(from: inputNumber-1, to: -1, by: -1) {
    if i + arr[i][0] > inputNumber {
        dp[i] = dp[i+1]
    }else{
        dp[i] = max(dp[i+1] , arr[i][1] + dp[i+arr[i][0]])
    }
    
    
    
}

print(dp[0])