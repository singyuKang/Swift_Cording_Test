import Foundation

////백준 12865번 https://www.acmicpc.net/problem/12865

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,K) = (input[0], input[1])
var arr : [[Int]] = [[0,0]]


for _ in 0..<N {

    let arrInput = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(arrInput)

}

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: K+1 ), count: K+1)



for i in 1..<arr.count {
    
    for j in 1..<K+1{
        let (weight , value) = (arr[i][0],arr[i][1])
        
        if j-weight < 0 {
            dp[i][j] = max(dp[i-1][j] , dp[i][j-1])
            continue
        }
        
        dp[i][j] = max(dp[i-1][j-weight]+value , dp[i-1][j])
        
    }
    
}
print(dp[arr.count-1].max()!)