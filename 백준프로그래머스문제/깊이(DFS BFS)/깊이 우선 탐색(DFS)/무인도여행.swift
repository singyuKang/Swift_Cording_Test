import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/154540

func solution(_ maps:[String]) -> [Int] {

    
    let dx : [Int] = [0,0,1,-1]
    let dy : [Int] = [1,-1,0,0]
    var answer : [Int] = []
    var map : [[String]] = Array(repeating : Array(repeating : "" , count : maps[0].count) , count : maps.count)
    var visited : [[Bool]] = Array(repeating : Array(repeating : false , count : maps[0].count) , count : maps.count)
    var maxValue = 0
    
    for (x, xValue) in maps.enumerated() { 
        for (y , xyValue) in xValue.enumerated() {
            map[x][y] = String(xyValue)
        }
    }
    
    func dfs(_ x : Int , _ y : Int, _ count : inout Int) {
        visited[x][y] = true
        for i in 0..<4 {
            let nextX = x + dx[i]
            let nextY = y + dy[i]
            if (0..<map.count).contains(nextX) && (0..<map[0].count).contains(nextY) && !visited[nextX][nextY] && map[nextX][nextY] != "X" {
                count += Int(map[nextX][nextY])!
                dfs(nextX , nextY , &count)
            }   
        }
    }
    
    for x in 0..<map.count {
        for y in 0..<map[0].count {
            if map[x][y] != "X" && !visited[x][y] {
                var count = Int(map[x][y])!
                dfs(x,y,&count)
                answer.append(count)
            }
        }
    }
    
    
    
    if answer.count == 0 {
        return [-1]
    }else{
        return answer.sorted()
    }
    
}