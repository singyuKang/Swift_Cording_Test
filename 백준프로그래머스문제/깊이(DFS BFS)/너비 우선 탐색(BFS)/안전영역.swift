import Foundation

////백준 2468번 https://www.acmicpc.net/problem/2468

var mapSize : Int = Int(readLine()!)!
var map : [[Int]] = Array(repeating: Array(repeating: 0, count: mapSize), count: mapSize)
var dx : [Int] = [0,0,1,-1]
var dy : [Int] = [1,-1,0,0]


var heightMax = 0
var answer = 0

for idx in 0..<mapSize {
    map[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
    if heightMax < map[idx].max()! {
        heightMax =  map[idx].max()!
    }
}

for dangerValue in 0...heightMax {
    var isDanger : [[Bool]] = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
    var isVisited : [[Bool]] = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
    var queue : [[Int]] = []
    var safeAreaCount = 0
    
    func bfs() {
        while !queue.isEmpty {
            let popValue = queue.removeFirst()
            let (nx, ny) = (popValue[0] , popValue[1])
            
            for i in 0..<4 {
                let x = nx + dx[i]
                let y = ny + dy[i]
                
                if x < mapSize && x >= 0 && y < mapSize && y >= 0 && !isVisited[x][y] && !isDanger[x][y] {
                    isVisited[x][y] = true
                    queue.append([x,y])
                }
            }
        }
    }
    
    for i in 0..<mapSize {
        for k in 0..<mapSize {
            if map[i][k] <= dangerValue {
                isDanger[i][k] = true
            }
        }
    }
    
    for i in 0..<mapSize {
        for k in 0..<mapSize {
            if isDanger[i][k] == false && isVisited[i][k] == false {
                queue.append([i,k])
                isVisited[i][k] = true
                bfs()
                safeAreaCount += 1
            }
        }
    }
    
    if answer <= safeAreaCount {
        answer  = safeAreaCount
    }

}

print(answer)