import Foundation


// 백준 2667번 https://www.acmicpc.net/problem/2667 이 문제는 방문만 하는것이 중요하기 때문에 경로를 구해주는 문제랑 다름
//https://www.acmicpc.net/problem/2178 이랑 비교 잘해야됨 visited[x][y] = true false 해주는 시점 하는것 주의
var inputNumber = Int(readLine()!)!
var map : [[Int]] = []
var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: inputNumber), count: inputNumber)

var answer : [Int] = []
var answerCount = 0
var temp = 1
var dx = [-1,1,0,0]
var dy = [0,0,-1,1]


func dfs(_ myIndex : [Int] ) {
    
    print(myIndex)
    temp += 1
    visited[myIndex[0]][myIndex[1]] = true
    
    for i in 0..<4 {
        
        let nx = myIndex[0] + dx[i]
        let ny = myIndex[1] + dy[i]
        if nx >= 0 && ny >= 0 && nx < inputNumber && ny < inputNumber && map[nx][ny] == 1 && visited[nx][ny] == false {
            dfs([nx, ny])
        }
        
    }

}



for _ in 0..<inputNumber {
    let str = readLine()!.map{ String($0)}.map { Int($0)!}
    map.append(str)
}


//print(map)


for x in 0..<inputNumber {
    for y in 0..<inputNumber {
        if map[x][y] == 1 && visited[x][y] == false {
            temp = 0
            dfs([x,y])
            answer.append(temp)
        }
    }
}
print(answer.count)
answer.sort(by: <)
for ans in answer {
        print(ans)
}
