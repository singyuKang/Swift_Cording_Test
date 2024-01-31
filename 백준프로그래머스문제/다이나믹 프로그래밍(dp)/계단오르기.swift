import Foundation

//백준 2579번 https://www.acmicpc.net/problem/2579
var stairCount = Int(readLine()!)!
var dp : [Int] = Array(repeating: 0, count: stairCount+1)
var stairArray : [Int] = [0]

for _ in 0..<stairCount {
    stairArray.append(Int(readLine()!)!)
}

if stairCount == 1 {
    print(stairArray[1])
}else if stairCount == 2 {
    print(stairArray[1] + stairArray[2])
}else if stairCount == 3 {
    print(max(stairArray[1] + stairArray[3] , stairArray[2] + stairArray[3]))
}else{
    dp[1] = stairArray[1]
    dp[2] = stairArray[1] + stairArray[2]
    dp[3] = max(stairArray[1] + stairArray[3] , stairArray[2] + stairArray[3])

    for i in 4...stairCount {
        
        dp[i] = max(stairArray[i] + dp[i-2] , stairArray[i] + stairArray[i-1] + dp[i-3])
        
    }

    print(dp[stairCount])
    
}


