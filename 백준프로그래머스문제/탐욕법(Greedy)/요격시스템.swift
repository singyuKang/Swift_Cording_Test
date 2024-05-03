import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/181188
func solution(_ targets:[[Int]]) -> Int {
    
    
    var targetArr : [[Int]] = targets.sorted {
        $0[1] < $1[1]
    }
    var answer = 0
    var end = -1
    
    
    for target in targetArr{
        if target[0] >= end {
            end = target[1]
            answer += 1
        }
    }
  return answer
}