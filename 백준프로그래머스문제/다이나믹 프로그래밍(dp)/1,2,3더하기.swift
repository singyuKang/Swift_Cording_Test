import Foundation

// 1,2,3의 합으로 나타내는 방법의 가지수
// 백준 9095번 https://www.acmicpc.net/problem/9095

var testCase = Int(readLine()!)!
var dpArray : [Int] = Array(repeating: 0, count: 12)

dpArray[1] = 1
dpArray[2] = 2
dpArray[3] = 4

for i in 4...11 {
    dpArray[i] = dpArray[i-1] + dpArray[i-2] + dpArray[i-3]
}


for _ in 0..<testCase {
    let n = Int(readLine()!)!
    print(dpArray[n])
    
    
}