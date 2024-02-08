import Foundation

// 백준 1932번 https://www.acmicpc.net/problem/1932

var inputNumber = Int(readLine()!)!
var map : [[Int]] = []
var dp : [[Int]] = []

for _ in 0..<inputNumber {
    let split = readLine()!.split(separator: " ").map { Int(String($0))! }
    map.append(split)
    dp.append(split.map { $0 * 0 })
}

if inputNumber == 1 {
    print(map[0][0])
}else{
    dp[0][0] = map[0][0]
    dp[1][0] = map[0][0] + map[1][0]
    dp[1][1] = map[0][0] + map[1][1]

    for i in 2..<inputNumber {
        let mapArr : [Int] = map[i]
        let firstIndex = 0
        let endIndex = mapArr.count-1
        
        //첫 번째
        dp[i][firstIndex] = map[i][firstIndex] + dp[i-1][firstIndex]
        
        //중간 부분 for문
        for k in firstIndex+1...endIndex-1 {
            dp[i][k] = max(dp[i-1][k-1] , dp[i-1][k]) + map[i][k]
        }
        
        //마지막
        dp[i][endIndex] = map[i][endIndex] + dp[i-1][endIndex-1]

        
    }

    print(dp[inputNumber-1].max()!)

    
}