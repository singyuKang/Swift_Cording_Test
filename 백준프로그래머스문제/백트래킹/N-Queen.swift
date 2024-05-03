
import Foundation

//백준 9663번 https://www.acmicpc.net/problem/9663
var N = Int(readLine()!)!
var map : [Int] = Array(repeating: 0, count: N)
var visited : [Bool] = Array(repeating: false, count: N)
var answer = 0

func validate(_ col:  Int) -> Bool {
    
    for i in 0..<col {
        if map[col] == map[i] {
            return false
        }
        if abs(map[col] - map[i]) == abs(i-col){
            return false
        }
    }
    return true
}

func dfs(_ col : Int){
    
    if col == N {
        answer += 1
        return
    }
    
    for i in 0..<N {
        if !visited[i] {
            map[col] = i
            if validate(col) {
                visited[i] = true
                dfs(col+1)
                visited[i] = false
            }
        }
    }
}

dfs(0)

print(answer)