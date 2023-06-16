
import Foundation

//백준 1260번
let input = readLine()!
let inputArray = input.split(separator: " ").map{Int(String($0))!}
let (n, m, v) = (inputArray[0], inputArray[1], inputArray[2])
var matrix = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
var visited = Array(repeating: false, count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map({Int(String($0))!})
    matrix[input[0]][input[1]] = 1
    matrix[input[1]][input[0]] = 1
}

func dfs(_ v : Int) {
    print(v, terminator: " ")
    visited[v] = true
    for i in 1..<n+1{
        if visited[i] == false && matrix[i][v] == 1{
            dfs(i)
            
        }
    }
}

func bfs(_ v : Int) {
    
    var queue : [Int] = []
    visited[v] = true
    queue.append(v)
    
    while !queue.isEmpty {
        let first = queue.removeFirst()
        print(first, terminator: " ")
        
        for i in 1..<n+1 {
            if visited[i] == false && matrix[i][first] == 1 {
                queue.append(i)
                visited[i] = true
            }
        }
        
    }
    
}

dfs(v)
print("")
for i in 1..<n+1 {
    visited[i] = false
}
bfs(v)
