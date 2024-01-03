import Foundation


// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/42861
// dfs 풀이 시간 효율 오류
func solutionOne(_ n:Int, _ costs:[[Int]]) -> Int {
    
    
    var map = Array(repeating : Array(repeating : 0, count : n), count : n)
    var bridge = Array(0..<n) // 0 1 2 3 ...  
    // print(bridge)
    var bridgeVisited = Array(repeating : false , count :  n)
    
    var answer : [Int] = [] 
    
    for i in costs {
        let (x,y) = (i[0], i[1])
        let cost = i[2]
        map[x][y] = cost 
        map[y][x] = cost
    }
    
    // print(map)
    
    func dfs(_ myBridge : [Int] , _ myCost : Int) { 
        // print(myBridge)
        if myBridge.count == n {
            answer.append(myCost)
            return
        }
        
        if let lastBridge = myBridge.last {
            
            for (index ,value) in map[lastBridge].enumerated() {    
                if value > 0 && bridgeVisited[index] == false {
                    bridgeVisited[index] = true
                    dfs(myBridge + [index], myCost + value)
                    bridgeVisited[index] = false
                }
            }
            
        }else{
            
            for i in 0..<n {
                bridgeVisited[i] = true
                dfs([i], 0)
                bridgeVisited[i] = false
            }
            
        }
        
    }
    
    dfs([] , 0)

    let minAnswer = answer.min() ?? 0

    return minAnswer
}






