import Foundation

//백준 15654번 https://www.acmicpc.net/problem/15654
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (input[0], input[1])
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var visited : [Bool] = Array(repeating: false, count: N)



func dfs(_ idx : Int , _ currentArr : [Int] , _ depth : Int){
    
    if depth == M {
        print(currentArr.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 0..<arr.count {
        if visited[i] {
            continue
        }else{
            visited[i] = true
            dfs(i+1, currentArr + [arr[i]] , depth + 1)
            visited[i] = false
        }
        
 
    }
    
    
}

dfs(0,[],0)