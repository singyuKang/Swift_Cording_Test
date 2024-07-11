import Foundation


// https://school.programmers.co.kr/learn/courses/30/lessons/160585
func solution(_ board:[String]) -> Int {
    
    var board = board
    var oCount = oxCount("O" , board)
    var xCount = oxCount("X", board)
    
    var oWon = checkWon("O" , board)
    var xWon = checkWon("X", board)
    
//     둘다 이겼을때 경우의 수는 없음 
    if oWon && xWon {
        return 0
    }
    
//    o 가 단독으로 이김
    if oWon {
        if oCount == xCount + 1 {
            return 1
        }else{
            return 0
        }
    }
    
//     x 가 단독으로 이김
    if xWon {
        if oCount == xCount {
            return 1 
        }else{
            return 0
        }
    }
 
    
//     이긴 경우가 없음
    if oCount == xCount + 1 || oCount == xCount {
        return 1
    }
    
    return 0
}


func oxCount(_ type : String, _ board : [String]) -> Int {
    var count = 0
    
    for str in board {
        for ty in str {
            if String(ty) == type {
                count += 1
            }   
        }
    }
    
    return count
    
}

func checkWon(_ type : String , _ board : [String]) -> Bool {
    
    var map : [[String]] = Array(repeating : Array(repeating : "" , count : board.count) , count : board.count)
    
    for (x,value)  in board.enumerated() {
        for (y, val) in value.enumerated() {
            map[x][y] = String(val)
        }
    }
    
    // print(map)
    
//    가로 체크
    for i in 0..<map.count {
        if map[i][0] == type && map[i][1] == type && map[i][2] == type {
         return true   
        }
    }    
//     세로 체크
    for i in 0..<map.count {
        if map[0][i] == type &&  map[1][i] == type &&  map[2][i] == type {
            return true
        }
    }
//     대각선 체크
    
    if map[0][0] == type && map[1][1] == type && map[2][2] == type {
        return true
    }
    
    if map[2][0] == type && map[1][1] == type && map[0][2] == type {
        return true
    }
    
//     나머지 false
    
    return false

}