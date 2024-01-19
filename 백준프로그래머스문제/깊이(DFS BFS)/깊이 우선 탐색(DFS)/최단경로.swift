import Foundation

// 백준 1753번 https://www.acmicpc.net/problem/1753
// dp + DFS 조합문제 모든경우의수 탐색하면 시간초과함으로 dp를 통해 끝까지 탐색할 필요없이 값만 불러옴으로써 비효율성 낮춤

var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (n,m) = (split[0], split[1])
var map : [[Int]] = []

var dp : [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
var dx = [-1,1,0,0]
var dy = [0,0,-1,1]
var answer = 0

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    map.append(arr)
}

func dfs(_ myIndex : [Int]) -> Int {
    
    let (x,y) = (myIndex[0], myIndex[1])
    
    if x == n-1 && y == m-1 {
        return 1
    }
    
    if dp[x][y] == -1 {
        dp[x][y] = 0
        
        for idx in 0..<4 {
            let nx = x + dx[idx]
            let ny = y + dy[idx]
            if nx >= 0 && ny >= 0 && nx < n && ny < m && map[x][y] > map[nx][ny] {
                dp[x][y] += dfs([nx,ny])
            }
        }
    }

    return dp[x][y]
    
}


print(dfs([0,0]))