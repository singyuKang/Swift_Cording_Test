import Foundation

//프로그래머스 네트워크 https://school.programmers.co.kr/learn/courses/30/lessons/43162
func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visitList : [Bool] = Array(repeating : false , count : n)
    var answer = 0
    
    for idx in 0..<n {
        var queue : [Int] = []
        var idxArray = computers[idx]
                
        if visitList[idx] == true {
            continue
        }
        visitList[idx] = true
        
        for (index, value) in idxArray.enumerated() {
            if index == idx {
                continue
            }
            if value == 1 && visitList[index] == false { 
                queue.append(index)
            }
        }
        
        while !queue.isEmpty {
            var popFirst = queue.removeFirst()
            visitList[popFirst] = true
            for (index, value) in computers[popFirst].enumerated() {
                if index == popFirst {
                    continue
                }
                
                if value == 1 && visitList[index] == false {
                    queue.append(index)
                }
             }
        }
        answer += 1

    }
 
    return answer
}