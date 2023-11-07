import Foundation

//프로그래머스 공원 산책 https://school.programmers.co.kr/learn/courses/30/lessons/172928
func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
//   joined(separator : "")   , split(separator : " ") 
    var map : [[String]] = []
    var start = [0,0]
    //E W S N
    let directions = ["E", "W", "S", "N"]
    let dx = [1,-1,0,0]
    let dy = [0,0,1,-1]

    for i in 0..<park.count {            // 공원을 2차원배열로 변경 및 시작점 찾기
        let arr = Array(park[i]).map{String($0)}
        if arr.contains("S") {
            start[0] = i
            for j in 0..<arr.count {
                if arr[j] == "S" {
                    start[1] = j
                }
            }
        }
        map.append(arr)
    }
    
    let (w, h) = (map[0].count, map.count)
    
    for route in routes {
        let routeSplit = route.split(separator : " ")
        let direction = String(routeSplit[0])
        let count = Int(routeSplit[1])!
        let directionIndex = directions.firstIndex(of : direction)! 
        var breakTrue = false
        var startX = start[1]
        var startY = start[0]
    
        for k in 0..<count {
            let nextX = start[1] + dx[directionIndex]
            let nextY = start[0] + dy[directionIndex]
            if !(nextX >= 0 && nextX < w && nextY >= 0 && nextY < h && map[nextY][nextX] != "X"){
                start[1] = startX
                start[0] = startY
                break
            }else{
                start[1] = nextX
                start[0] = nextY
            }
  
        }

    }
    
    
    
    
    
    return start
    
}