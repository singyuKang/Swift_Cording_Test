import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/49189 다익스트라 풀이
func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    
    var map : [[Int]] = Array(repeating : Array(repeating : 0, count : n+1), count : n+1)
    var visited : [Bool] = Array(repeating : false, count :n+1)
    var queue : [Int] = []
    var answerArr : [Int] = Array(repeating : Int.max, count : n+1)
    var answer = 0
    
    for i in edge {
        var (x,y) = (i[0], i[1])
        map[x][y] = 1
        map[y][x] = 1
    }
    
    visited[1] = true
    answerArr[0] = 0
    answerArr[1] = 0
    queue.append(1)
    
    while queue.count > 0 {
        let queuePop = queue.removeFirst()
        visited[queuePop] = true
        
        for (y , value) in map[queuePop].enumerated(){
            
            if map[queuePop][y] == 1 &&  visited[y] == false {
                if answerArr[queuePop] + 1 < answerArr[y] {
                    answerArr[y] = answerArr[queuePop] + 1
                    queue.append(y)
                }
            }
            
        }
        
    }
    
    // print(answerArr)
    
    let answerMax = answerArr.max()!
    
    for i in answerArr {
        if answerMax == i {
            answer += 1
        }
    }
    

    return answer
}