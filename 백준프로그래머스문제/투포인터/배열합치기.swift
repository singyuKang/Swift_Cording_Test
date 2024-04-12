import Foundation

//백준 11728번 https://www.acmicpc.net/problem/11728

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (aArrCount,bArrCount) = (input[0], input[1])
var ansArr : [Int] = []
var aArr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var bArr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var aIdx = 0
var bIdx = 0

while aIdx != aArrCount || bIdx != bArrCount {
    
    if aIdx == aArrCount {
        ansArr.append(bArr[bIdx])
        bIdx += 1
        continue
    }
    
    if bIdx == bArrCount {
        ansArr.append(aArr[aIdx])
        aIdx += 1
        continue
    }
    
    if aArr[aIdx] < bArr[bIdx] {
        ansArr.append(aArr[aIdx])
        aIdx += 1
    }else{
        ansArr.append(bArr[bIdx])
        bIdx += 1
    }
}

print(ansArr.map { String($0) }.joined(separator: " "))
