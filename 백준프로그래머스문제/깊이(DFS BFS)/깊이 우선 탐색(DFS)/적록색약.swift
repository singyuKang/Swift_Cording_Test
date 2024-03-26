import Foundation

//백준 10026번 https://www.acmicpc.net/problem/10026

var mapSize = Int(readLine()!)!
var map : [[String]] = Array(repeating: Array(repeating: "", count: mapSize), count: mapSize)
var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
let dx = [0,0,1,-1]
let dy = [1,-1,0,0]
var normalAnswer = 0
var redEyeAnswer = 0

for idx in 0..<mapSize {
    let input = readLine()!.map{ String($0) }
    map[idx] = input
}

func dfs(_ x : Int , _ y : Int) {

    visited[x][y] = true
    for i in 0...3{
        let nextX = x + dx[i]
        let nextY = y + dy[i]
        if  nextX >= 0 && nextX < mapSize && nextY >= 0 && nextY < mapSize && visited[nextX][nextY] == false && map[nextX][nextY] == map[x][y] {
            dfs(nextX ,nextY)
        }
    }
 
}


for x in 0..<mapSize {
    for y in 0..<mapSize {
        
        if visited[x][y] == false {
            normalAnswer += 1
            dfs(x,y)
        }
        
    }
    
}
visited = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
for idx in 0..<mapSize {
//    map[idx].indices.filter{ map[idx][$0] == "G" }.forEach { map[idx][$0] = "R"}
    var mapX : [String] = map[idx].map {
        if $0 == "G" {
            return "R"
        }
        return $0
    }
    map[idx] = mapX
    
}

for x in 0..<mapSize {
    for y in 0..<mapSize {
        if visited[x][y] == false {
            redEyeAnswer += 1
            dfs(x,y)
        }
        
    }
    
}
print(normalAnswer, terminator: " ")
print(redEyeAnswer)
