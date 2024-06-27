import Foundation

// 백준 2143번 https://www.acmicpc.net/problem/2143
let target = Int(readLine()!)!
let aCount = Int(readLine()!)!
var aArr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let bCount = Int(readLine()!)!
var bArr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dicA : [Int : Int] = [:]
var dicB : [Int : Int] = [:]
var answer = 0

for i in 0..<aCount {
    var temp = 0
    
    for j in i..<aCount {
        temp += aArr[j]
        if dicA[temp] == nil {
            dicA[temp] = 1
        }else{
            dicA[temp]! += 1
        }
    }
}

for i in 0..<bCount {
    var temp = 0
    
    for j in i..<bCount {
        temp += bArr[j]
        if dicB[temp] == nil {
            dicB[temp] = 1
        }else{
            dicB[temp]! += 1
        }
    }
}

for (key , value) in dicA {
    
    if dicB[target-key] == nil {
        continue
    }else{
        answer += dicB[target-key]! * value
    }
    
}

print(answer)