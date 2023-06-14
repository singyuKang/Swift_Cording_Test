import Foundation

//백준 2606번
let n = Int(readLine()!)!
let m = Int(readLine()!)!

var matrix = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
var visited = Array(repeating: false, count: n+1)
var answer = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    matrix[input[0]][input[1]] = 1
    matrix[input[1]][input[0]] = 1
}

func dfs(_ v : Int) {
    visited[v] = true
    answer += 1
    for i in 1..<n+1 {
        if visited[i] == false && matrix[v][i] == 1 {
            dfs(i)
           
        }
    }
    
}

dfs(1)
print(answer-1)