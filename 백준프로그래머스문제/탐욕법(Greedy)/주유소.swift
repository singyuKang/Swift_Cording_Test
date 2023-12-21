import Foundation


//백준 https://www.acmicpc.net/problem/13305
let N = Int(readLine()!)!
var distance : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var price : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = 0
var currentPrice = 999999

//부분점수
for idx in 0..<distance.count {
    
    if currentPrice < price[idx] {
        answer += currentPrice * distance[idx]
    }else{
        answer += price[idx] * distance[idx]
        currentPrice = price[idx]
        
    }
    
    
}

print(answer)

// currentPrice -> price[0]으로 변경시 정답처리됨
let N = Int(readLine()!)!
var distance : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var price : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = 0
var currentPrice = price[0]

//부분점수
for idx in 0..<distance.count {
    
    if currentPrice < price[idx] {
        answer += currentPrice * distance[idx]
    }else{
        answer += price[idx] * distance[idx]
        currentPrice = price[idx]
        
    }
    
    
}

print(answer)
