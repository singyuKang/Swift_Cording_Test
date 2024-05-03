import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/169199
func solution(_ board:[String]) -> Int {
    
    struct Position {
        let x : Int
        let y : Int
        let cost : Int
    }
    
    // Swift로 큐 구현
    struct Queue {

        var index = 0
        var array = [Position]()

        var isEmpty: Bool {
            index == array.count
        }

        mutating func push(_ p: Position) {
            array.append(p)
        }

        mutating func pop() -> Position {
            defer {
                index += 1
            }
            return array[index]
        }

    }
    

    var map : [[String]] = board.map { $0.map { String($0) } }
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: map[0].count), count: map.count)
    var queue = Queue()
    var startPosition : [Int] = [0,0]
    
    
    for i in 0..<map.count {
        for k in 0..<map[0].count {
            if map[i][k] == "R" {
                startPosition[0] = i
                startPosition[1] = k
            }
        }
    }
    
    queue.push(Position(x : startPosition[0] , y : startPosition[1] , cost : 0))
    visited[startPosition[0]][startPosition[1]] = true
    
    while !queue.isEmpty {
        let nowPosition = queue.pop()
        
        if map[nowPosition.x][nowPosition.y] == "G" {
            return nowPosition.cost
        }
        
//        상하좌우 끝까지 이동
        for i in 0..<4 {
            var (nx , ny) = (0,0)
            var (nowX, nowY) = (nowPosition.x, nowPosition.y)
//             상
            if i == 0 {
                while nowX > 0 && map[nowX-1][nowY] != "D" {
                    nowX -= 1
                }
//                 하
            }else if i == 1 {
                while nowX < board.count-1 && map[nowX+1][nowY] != "D" {
                    nowX += 1
                }   
//                 좌
            }else if i == 2 {
                while nowY > 0 && map[nowX][nowY-1] != "D" {
                    nowY -= 1
                }  
//                 우
            }else if i == 3 {
                 while nowY < board[0].count-1 && map[nowX][nowY+1] != "D" {
                    nowY += 1
                }  
                
                
            }

            nx = nowX
            ny = nowY
            
            
            if !visited[nx][ny] {
                queue.push(Position(x : nx , y : ny, cost : nowPosition.cost + 1))
                visited[nx][ny] = true
            }
            
        }
        
    }
    
    return -1

}
