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

// 크루스칼 알고리즘 풀이 다른사람 풀이
func solutionTwo(_ n:Int, _ costs:[[Int]]) -> Int {
    var answer = 0
    var parents : [Int] = Array(0...n-1)
    var costs = costs.sorted { $0[2] < $1[2] }
    
    /// 최상위 부모 등록
    func unionSet(start: Int, end: Int) {
        var start = start
        var end = end
        if start != end {
            parents[end] = start
        }
    }
    
    /// 자신의 최상위 부모찾는 함수
    func findSet(_ start: Int) -> Int {
        print(parents)
        if parents[start] == start {
            return start
        } else {
            // 자신이 최상위 부모가아니라면 최상위 부모를 찾는 재귀실행
            let parent = findSet(parents[start])
            parents[start] = parent
            
            // 자신을 부모로 가지고 있는 노드들 전부 새로운 부모로 업데이트
            for i in 0..<parents.count {
                if parents[i] == st art {
                    parents[i] = parent
                }
            }
            
            return parent
        }
    }
    
    print(costs)
    

    for cost in costs {
        var (start , end , value) = (findSet(cost[0]), findSet(cost[1]), cost[2])
        
        if start != end {
            answer += value
            unionSet(start: start, end: end)
        }
        
        
    }
    return answer
    
    
}


func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var answer = 0
    var parents : [Int] = Array(0...n-1)
    var costs = costs.sorted { $0[2] < $1[2] }
    
    /// 부모 비교후 작은순으로 부모 재배치 숫자큰 부모는 모두 작은순으로 변경
    func unionSet(start: Int, end: Int) {
        var start = start
        var end = end
        if start != end {
            parents[end] = start
            for i in 0..<parents.count {
                if parents[i] == end {
                    parents[i] = start
                }
                
            }
        }
    }

    for cost in costs {
        var (start , end , value) = (parents[cost[0]], parents[cost[1]], cost[2])
        
        //사이클 미발생
        if start != end {
            answer += value
            unionSet(start: start, end: end)
        }
        
        
    }

    
    return answer
    
}











