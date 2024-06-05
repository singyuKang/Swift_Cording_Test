import Foundation
////백준 14503번  https://www.acmicpc.net/problem/14503

var nmInput = readLine()!.split(separator: " ").map { Int(String($0))! }
var rcInput = readLine()!.split(separator: " ").map { Int(String($0))! }

var (N,M) = (nmInput[0] , nmInput[1])
// 0 : 북쪽 , 1 : 동쪽 , 2: 남쪽 , 3 : 서쪽
var (R,C,D) = (rcInput[0] , rcInput[1] , rcInput[2])
var map : [[Int]] = Array(repeating: [], count: N)
var clean : [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
var answer = 1

var dx : [Int] = [-1,0,1,0]
var dy : [Int] = [0,1,0,-1]

for i in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    map[i] = input
}

clean[R][C] = true
func dfs(now : Int, x : Int , y : Int) {
    for i in 0..<4 {
        let nextD = (now - i + 3) % 4
        let nextX = x + dx[nextD]
        let nextY = y + dy[nextD]
        
        if (0..<N).contains(nextX) && (0..<M).contains(nextY) && !clean[nextX][nextY] && map[nextX][nextY] != 1 {
            clean[nextX][nextY] = true
            answer += 1
            dfs(now: nextD, x: nextX, y: nextY)
        }
    }
    
    let backIndex = now > 1 ? now - 2 : now + 2
    let backX = x + dx[backIndex]
    let backY = y + dy[backIndex]
    if (0..<N).contains(backX) && (0..<M).contains(backY) {
        if map[backX][backY] == 1 {
            print(answer)
            exit(0)
        }else{
            dfs(now: now, x: backX, y: backY)
        }
    }
}

dfs(now: D, x: R, y: C)
print(answer)