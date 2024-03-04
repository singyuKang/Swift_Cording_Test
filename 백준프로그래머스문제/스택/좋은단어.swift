import Foundation

// 백준 3986번 https://www.acmicpc.net/problem/3986
var inputNumber = Int(readLine()!)!
var answer : Int = 0

for _ in 0..<inputNumber {
    var stack : [String] = []
    
    let inputArr = readLine()!.map{ String($0) }
    
    for i in inputArr {
        
        if i == stack.last {
            stack.removeLast()
        }else{
            stack.append(i)
        }
        
    }

    if stack.isEmpty {
        answer += 1
    }
}
print(answer)
