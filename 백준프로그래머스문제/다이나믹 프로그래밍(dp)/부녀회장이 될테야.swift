import Foundation

//백준 2775번 https://www.acmicpc.net/problem/2775
var testCase = Int(readLine()!)!
var map : [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)

for i in 1...14 {
    map[0][i] = i
    map[i][1] = 1
}

for i in 1...14 {
    
    for k in 2...14 {
        map[i][k] = map[i-1][k] + map[i][k-1]
    }
    
}

for _ in 0..<testCase {
    // a층의 b호에 살려면 자신의 아래 a-1 층의 1호부터 b호 까지 사람들의 수합만큼 사람들을 데려와 살아야한다...
    // k층에 n호에는 몇명이 살고있나
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(map[k][n])
    
}
