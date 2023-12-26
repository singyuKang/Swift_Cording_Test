import Foundation

//백준 1049번 https://www.acmicpc.net/problem/1049
let split = readLine()!.split(separator: " ")
var (N,M) = (Int(split[0])!, Int(split[1])!)
var answer = 0
var numberList : [[Int]] = []
var pakageNumber = N / 6
var eachNumber = N % 6

for _ in 0..<M {
    let split = readLine()!.split(separator: " ").map{Int(String($0))!}
    numberList.append(split)
}

let pakageLeast = numberList.sorted{
    return $0[0] < $1[0]
}

let eachLeast = numberList.sorted {
    return $0[1] < $1[1]
}

if pakageLeast[0][0] < eachLeast[0][1] * 6 {
    answer += pakageLeast[0][0] * pakageNumber
    if pakageLeast[0][0] < eachLeast[0][1] * eachNumber {
        answer += pakageLeast[0][0]
    }else{
        answer += eachLeast[0][1] * eachNumber
    }
}else{
    answer += eachLeast[0][1] * N
}

print(answer)