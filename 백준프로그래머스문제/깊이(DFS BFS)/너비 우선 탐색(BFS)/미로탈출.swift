import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/159993
func solution(_ maps:[String]) -> Int {
    
    var mapsCount : [[Int]] = Array(repeating : Array(repeating : 0 , count : maps[0].count) , count : maps.count)
    let maps : [[String]] = maps.map { $0.map{ String($0) } }
    
    let dx : [Int] = [0,0,1,-1]
    let dy : [Int] = [1,-1,0,0]
    var leverXY = [0,0]
    var startXY = [0,0]
    var exitXY = [0,0]

    for x in 0..<maps.count {        
        for y in 0..<maps[0].count {
            if maps[x][y] == "S" {
                startXY[0] = x
                startXY[1] = y
            }else if maps[x][y] == "L" {
               leverXY[0] = x
               leverXY[1] = y 
            }else if maps[x][y] == "E" {
                exitXY[0] = x
                exitXY[1] = y
            }
        }
    }
    
    func bfs(_ startXY : [Int], _ maps : [[String]],  _ endXY : [Int]) -> Int {
        var visited = Array(repeating : Array(repeating : false , count : maps[0].count), count : maps.count)
        var queue : [[Int]] = []
        queue.append(startXY)
        visited[startXY[0]][startXY[1]] = true
        
        while !queue.isEmpty {
            let queuePop = queue.removeFirst()
            let (x,y) = (queuePop[0] , queuePop[1])
            
            for i in 0..<4{ 
                let nextX = x + dx[i]
                let nextY = y + dy[i]
                
                if nextX >= 0 && nextX < maps.count && nextY >= 0 && nextY < maps[0].count && !visited[nextX][nextY] && maps[nextX][nextY] != "X" {
                    mapsCount[nextX][nextY] =  mapsCount[x][y] + 1
                    queue.append([nextX , nextY])
                    visited[nextX][nextY] = true
   
                }
                
                
            }
            
            
        }
        
        // print(mapsCount)
        // return -1
        return mapsCount[endXY[0]][endXY[1]]
        
        
    }
    
    
//     1. 레버 까지의 최단경로
    let startToLever = bfs(startXY , maps , leverXY)

//     2. 레버에서 목적지까지의 최단경로
    mapsCount = Array(repeating : Array(repeating : 0 , count : maps[0].count) , count : maps.count)
    let leverToExit = bfs(leverXY , maps , exitXY)
    
    if (startToLever == 0 || leverToExit == 0){
        return -1
    }else{
        return startToLever + leverToExit
    }
    return 0

}