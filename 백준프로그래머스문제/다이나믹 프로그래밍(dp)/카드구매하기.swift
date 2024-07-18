import Foundation

// 백준 11052번 https://www.acmicpc.net/problem/11052

var N = Int(readLine()!)!
var arr : [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var dp : [Int] = Array(repeating: 0, count: N+1)

dp[1] = arr[1]

for i in 2..<N+1 {
    
    var dpMax = 0
//    dp value
    for k in 1..<i {
        if dpMax < dp[k] + arr[i-k] {
            dpMax = dp[k] + arr[i-k]
            
        }
    }
//    arr value
//    print(max(dpMax, arr[i]))
    dp[i] = max(dpMax, arr[i])

}

print(dp[N])