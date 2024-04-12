import Foundation

// 백준 1012번  https://www.acmicpc.net/problem/1012
var count = Int(readLine()!)!


for _ in 0..<count {
    
    let split = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let (xSize , ySize , vegetableCount) = (split[1], split[0] , split[2])
    var map : [[Int]] = Array(repeating: Array(repeating: 0, count: ySize), count: xSize)
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: ySize), count: xSize)
    var answer : Int = 0
    let dx : [Int] = [1,-1,0,0]
    let dy : [Int] = [0,0,1,-1]
    
    
    

    for _ in 0..<vegetableCount {
        let split = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (x,y) = (split[1], split[0])
        
        map[x][y] = 1
        
    }
        
    func bfs(_ x : Int, _ y : Int) {
        
        var queue : [[Int]] = [[x,y]]
        
        while !queue.isEmpty {
            let myIndex = queue.removeFirst()
            //상하좌우
            for i in 0..<4 {
                let nx = myIndex[0] + dx[i]
                let ny = myIndex[1] + dy[i]
                
                if nx >= 0 && ny >= 0 && nx < xSize && ny < ySize && visited[nx][ny] == false && map[nx][ny] == 1 {
                    visited[nx][ny] = true
                    queue.append([nx , ny])
                } 
                
            }
            
        }
        
    }
    
    for x in 0..<xSize {
        for y in 0..<ySize {
            if visited[x][y] == false && map[x][y] == 1 {
                answer += 1
                bfs(x,y)
            }
            
        }
        
    }

    print(answer)
    
    
    
}