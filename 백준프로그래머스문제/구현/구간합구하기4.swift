import Foundation

//백준 11659번 https://www.acmicpc.net/problem/11659

var inputNM = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (inputNM[0], inputNM[1])
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var sumList : [Int] = [0]


for i in arr {
    sumList.append(sumList.last! + i)
}

for _ in 0..<M {
    let inputIJ = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (i,j) = (inputIJ[0], inputIJ[1])
    print(sumList[j] - sumList[i-1])
}