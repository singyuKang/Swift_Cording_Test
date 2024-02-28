import Foundation

// https://www.acmicpc.net/problem/15652
let split = readLine()!.split(separator: " ").map { Int(String($0))! }
let (N,M) = (split[0], split[1])

// 결과 저장 배열
var answer : [Int] = []

func dfs(_ currentNumber : Int) {
    
    if answer.count == M {
        print(answer.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in currentNumber...N {3
        answer.append(i)
        dfs(i)
        _ = answer.popLast()!
    }
    

}


dfs(1)