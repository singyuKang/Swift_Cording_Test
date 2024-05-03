import Foundation

//백준 11054번 https://www.acmicpc.net/problem/11054

var arrCount = Int(readLine()!)!
var fistArr : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var secondArr : [Int] = fistArr.reversed()

var firstDp : [Int] = Array(repeating: 1, count: arrCount)
var secondDp : [Int] = Array(repeating: 0, count: arrCount)

var dp : [Int] = Array(repeating: 1, count: arrCount)

for i in 1..<arrCount {
    for j in 0..<i {
        if fistArr[j] < fistArr[i] {
            firstDp[i] = max(firstDp[i] , firstDp[j]+1)
            
        }
        
    }
    
}


for i in 1..<arrCount {
    for j in 0..<i {
        if secondArr[j] < secondArr[i] {
            secondDp[i] = max(secondDp[i] , secondDp[j]+1)
        }
    }
}

for i in 0..<arrCount {
    dp[i] = firstDp[i] + secondDp[arrCount-1-i]
}

print(dp.max()!)
