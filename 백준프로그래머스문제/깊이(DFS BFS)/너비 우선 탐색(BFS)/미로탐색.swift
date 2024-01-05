import Foundation

// 백준 2178번 https://www.acmicpc.net/problem/2178 가중치 없는 무방향 그래프는 bfs 가 유리함 dfs 는 시간초과
var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (n,m) = (split[0], split[1])
var map : [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
var mapVisited : [[Bool]] =  Array(repeating: Array(repeating: false, count: m), count: n)
var distance : [[Int]] =  Array(repeating: Array(repeating: 0, count: m), count: n)
var dx : [Int] = [1,-1,0,0]
var dy : [Int] = [0,0,-1,1]
var (xTargetIndex, yTargetIndex) = (n-1, m-1)
var answerArray : [Int] = []



for x in 0..<n {
    let inputArray = readLine()!.map { Int(String($0))! }
    for (y , value) in inputArray.enumerated() {
        map[x][y] = value
    }
}

func dfs(_ myIndex : [Int] , _ count : Int){
    
    if myIndex[0] == xTargetIndex && myIndex[1] == yTargetIndex {
        answerArray.append(count)
        return
    }

    for i in 0..<4 {
        //DFS 조건 추가
        let nx = myIndex[0] + dx[i]
        let ny = myIndex[1] + dy[i]
        if nx >= 0 && ny >= 0 && nx < n && ny < m && mapVisited[nx][ny] == false && map[nx][ny] == 1 {
            mapVisited[nx][ny] = true
            dfs([nx, ny], count + 1)
            mapVisited[nx][ny] = false
        }
    }
    
}

func bfs(){
    var queue : [[Int]] = [[0,0]]
    mapVisited[0][0] = true
    distance[0][0] = 1
    
    while !queue.isEmpty {
        let myIndex = queue.removeFirst()
        
        for idx in 0..<4 {
            //BFS  조건 추가
            let nx = myIndex[0] + dx[idx]
            let ny = myIndex[1] + dy[idx]
            
            if nx >= 0 && ny >= 0 && nx < n && ny < m && mapVisited[nx][ny] == false && map[nx][ny] == 1 {
                distance[nx][ny] = distance[myIndex[0]][myIndex[1]] + 1
                mapVisited[nx][ny] = true
                queue.append([nx,ny])
            }
        }
    }
    
}

//dfs([0,0], 1)

bfs()
print(distance[xTargetIndex][yTargetIndex])