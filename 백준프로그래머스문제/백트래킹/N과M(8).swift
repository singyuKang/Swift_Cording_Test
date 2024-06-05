import Foundation

////백준 15657번  https://www.acmicpc.net/problem/15657
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (input[0], input[1])
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

func dfs(_ value : [Int] , _ currentIdx : Int) {
    
    if value.count == M {
        print(value.map{String($0)}.joined(separator: " "))
        return
    }

    for i in currentIdx..<arr.count {
        dfs(value + [arr[i]] , i)
    }
    
    
}

dfs([] , 0)