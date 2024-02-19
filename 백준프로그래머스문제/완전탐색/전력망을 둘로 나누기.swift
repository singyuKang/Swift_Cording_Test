import Foundation

//BFS 이용
func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    
    var answer = 9999

    for i in 0..<wires.count {
        var isVisitedNode : [Int] = Array(repeating : 0 , count : n+1)
        var wireGraph : [[Int]] = Array(repeating  : Array(repeating : 0, count : n+1) , count : n+1)
        var queue : [Int] = []
        var count = 0
        // init
        for j in 0..<wires.count {
            if j == i {
                continue
            }
            wireGraph[wires[j][0]][wires[j][1]] = 1
            wireGraph[wires[j][1]][wires[j][0]] = 1
        }
        
       
        queue.append(1)
        isVisitedNode[1] = 1
        
        while !queue.isEmpty {
            var first = queue.removeFirst()
            for (index , k) in wireGraph[first].enumerated(){
                if isVisitedNode[index] == 0 && wireGraph[index][first] == 1 {
                    queue.append(index)
                    isVisitedNode[index] = 1
                }
            }
        }
    
        for j in isVisitedNode {
            if j == 1 {
                count += 1
            }
        }

        let tempAnswer = abs((n-count) - count)
        
        if tempAnswer < answer {
            answer = tempAnswer
        }
 
    }
    
     
    return answer
}