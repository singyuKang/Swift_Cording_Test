import Foundation
////백준 2580번  https://www.acmicpc.net/problem/2580

var map : [[Int]] = Array(repeating : [] , count : 9)
var zeroArr : [[Int]] = []

for i in 0..<9 {
    map[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

for x in 0..<9 {
    for y in 0..<9 {
        if map[x][y] == 0 {
            zeroArr.append([x,y])
        }
    }
    
}


func dfs(idx : Int) {
    
    if idx == zeroArr.count {
        for i in 0..<9 {
            print(map[i].map{String($0)}.joined(separator: " "))
        }
        
        
        exit(0)
    }
    
    let x = zeroArr[idx][0]
    let y = zeroArr[idx][1]
    
    for i in 1...9 {
        if check(x: x, y: y, number: i){
            map[x][y] = i
            dfs(idx: idx+1)
            map[x][y] = 0
        }
    }
    
}



func check( x : Int , y : Int, number : Int) -> Bool {
//    가로 , 세로 , 같은 칸
    
    if map[x].contains(number) {
        return false
    }
    
    for i in 0..<9 {
        if map[i][y] == number {
            return false
        }
    }
    
    let nx = x / 3 * 3
    let ny = y / 3 * 3
    
    for i in 0..<3 {
        for j in 0..<3 {
            if map[nx+i][ny+j] == number {
                return false
            }
        }
    }
    
    return true
}

dfs(idx: 0)