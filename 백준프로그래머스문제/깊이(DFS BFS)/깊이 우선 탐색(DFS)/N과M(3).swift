import Foundation

//백준 15651번 https://www.acmicpc.net/problem/15651

var inputArr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (inputArr[0], inputArr[1])
var depth : Int = 0
var result : [Int] = []
var str = ""

func dfs(_ depth : Int) {
    
    if depth == M {
        str += result.map { String($0) }.joined(separator: " ")
        str += "\n"
        return
    }
    
    for i in 1...N {
        result.append(i)
        dfs(depth + 1)
        result.removeLast()
    }
}


dfs(depth)
print(str)