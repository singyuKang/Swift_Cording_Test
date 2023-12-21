import Foundation

//백준 2217번 로프  https://www.acmicpc.net/problem/2217
let N = Int(readLine()!)!
var answer = 0
var numberList :[Int] = []

for _ in 0..<N {
    numberList.append(Int(readLine()!)!)
}

numberList.sort(by: <)

for (index, value) in numberList.enumerated() {
    if value * (N-index) > answer {
        answer = value * (N-index)
    }
    
}

print(answer)