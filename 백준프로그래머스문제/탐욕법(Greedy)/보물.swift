import Foundation

//백준 보물 https://www.acmicpc.net/problem/1026
let n = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let B = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by : >)


var answer = 0


for aIndex in 0..<A.count {
    answer += A[aIndex] * B[aIndex]
}


print(answer)
