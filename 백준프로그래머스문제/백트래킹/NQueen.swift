import Foundation

//백준 9663번 https://www.acmicpc.net/problem/9663
// 풀이중
var N = Int(readLine()!)!
var map : [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
var answer = 0

func checkMap(_ xyIdx : [Int]) -> Bool {
    let (xIdx, yIdx) = (xyIdx[0] ,xyIdx[1])
    
    
    
    return false
    
}



func dfs(_ xyIdx : [Int], _ count : Int){
    
    if count == N {
        answer += 1
        print(visited)
        return
    }

    for x in 0..<N {
        for y in 0..<N{
            
            if visited[x][y] == true{
                continue
            }
            
            if checkMap(xyIdx){
                
            }
            
        }
        
    }
    
    
    
}



for x in 0..<N {
    for y in 0..<N {
        visited[x][y] = true
        dfs([x,y], 1)
        visited[x][y] = false
    }
    
}



