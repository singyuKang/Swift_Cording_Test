import Foundation

////백준 15663번  https://www.acmicpc.net/15663

var inputOne = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var (N,M) = (inputOne[0] , inputOne[1])
var dic : [String : Bool] = [:]
var visited : [Bool] = Array(repeating: false, count: N)

func dfs(_ value : [Int] ,_ currentIdx : Int) {
    
    if value.count == M {
        let checkString = value.map{String($0)}.joined(separator: " ")
        if !dic.keys.contains(checkString) {
            dic[checkString] = true
            print(checkString)
        }
        
        return
    }

    
    for idx in 0..<arr.count {
        if !visited[idx] {
            visited[idx] = true
            dfs(value + [arr[idx]], idx)
            visited[idx] = false
        }
        
        
    }
    
    
    
}

dfs([], 0)
