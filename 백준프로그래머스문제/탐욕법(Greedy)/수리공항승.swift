import Foundation

//백준 1449번 https://www.acmicpc.net/problem/1449

let split = readLine()!.split(separator: " ")
var (N,L) = (Int(split[0])!, Int(split[1])!)
var waterList : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted(by: <)
var waterBoolList : [Bool] = Array(repeating: false, count: waterList.max()!+1)
var answer = 0


for idx in waterList {
    if waterBoolList[idx] == false{
  
        for i in idx..<idx + L {
            if i >= waterBoolList.count {
                break
            }
            
            waterBoolList[i] = true
            
        }
        answer += 1
        
    }
    
}

print(answer)
