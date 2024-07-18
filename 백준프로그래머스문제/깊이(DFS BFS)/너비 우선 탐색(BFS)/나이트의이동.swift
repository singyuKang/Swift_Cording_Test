import Foundation

// 백준 7562번 https://www.acmicpc.net/problem/7562

var N = Int(readLine()!)!

for _ in 0..<N {
    let mapSize = Int(readLine()!)!
    let startPoint = readLine()!.split(separator: " ").map { Int(String($0))! }
    let endPoint = readLine()!.split(separator: " ").map { Int(String($0))! }
    let map : [[Int]] = Array(repeating: Array(repeating: 0, count: mapSize), count: mapSize)
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
    let dx : [Int] = [-2,-2,-1,1,2,2,-1,1]
    let dy : [Int] = [1,-1,-2,-2,-1,1,2,2]
    var queue : [[Int]] = []
    var answer = 0
    
    queue.append(startPoint + [0])
    visited[startPoint[0]][startPoint[1]] = true
    
    while !queue.isEmpty {
        
        let pop = queue.removeFirst()
        let (x,y,count) = (pop[0] , pop[1], pop[2])
    
        if x == endPoint[0] && y == endPoint[1] {
            answer = count
            break
        }
        
        for i in 0..<dx.count {
            
            let nextX = x + dx[i]
            let nextY = y + dy[i]
            
            if (0..<mapSize).contains(nextX) && (0..<mapSize).contains(nextY) && !visited[nextX][nextY] {
                queue.append([nextX, nextY,count+1])
                visited[nextX][nextY] = true
                
            }
        
        }
        

    }
    
    print(answer)

}
