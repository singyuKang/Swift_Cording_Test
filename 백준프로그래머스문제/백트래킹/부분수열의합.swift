import Foundation

//백준 1182번 https://www.acmicpc.net/problem/1182

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,S) = (input[0], input[1])
var arr:  [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var visited : [Bool] = Array(repeating: false, count: N)
var answer : Int = 0


func dfs(_ currentValue : Int, _ count : Int, _ startIdx : Int) {
   
    
    if currentValue == S && count > 0 {
        answer += 1
    }
    
    for i in startIdx..<N {
        dfs(currentValue + arr[i] , count + 1 , i + 1)
    }
    
}

dfs(0,0,0)

print(answer)