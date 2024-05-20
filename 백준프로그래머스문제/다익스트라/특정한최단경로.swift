import Foundation

////백준 1504번 https://www.acmicpc.net/problem/1504

struct Node {
    let node : Int
    let cost : Int
}

var queue : [Node] = []
var graph : [Int : [Node]] = [:]
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,E) = (input[0], input[1])
var costList : [Int] = Array(repeating: Int.max, count: N+1)

for i in 1..<N+1 {
    graph[i] = []
}

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (start , end , cost) = (input[0] , input[1] , input[2])
    graph[start]!.append(Node(node: end, cost: cost))
    graph[end]!.append(Node(node: start, cost: cost))
}

var vInput = readLine()!.split(separator: " ").map { Int(String($0))! }
var (v1 , v2) = (vInput[0] , vInput[1])

func djisktra(_ start : Int) {
    costList = Array(repeating: Int.max, count: N+1)
    queue.append(Node(node: start, cost: 0))
    
    
    while !queue.isEmpty {
        let queuePop = queue.removeFirst()
        let (node , cost) = (queuePop.node , queuePop.cost)
        
        for next in graph[node]! {
            let (nextNode , nextCost) = (next.node , next.cost)
            
            if cost + nextCost < costList[nextNode] {
                costList[nextNode] = cost + nextCost
                queue.append(Node(node: nextNode, cost: cost + nextCost))
            }
            
        }
    
    }
    
    print(costList)
    
}

//print(graph)

djisktra(1)
//print("costList1:", costList)


var startV1 = costList[v1]
var startV2 = costList[v2]


djisktra(v1)
//print("costList v1 :", costList)
var v1v2 = costList[v2]
var v1End = costList[N]


djisktra(v2)
//print("costList v2 :", costList)

//var v2v1 = costList[v1]
var v2End = costList[N]

//var answer = min(startV1 + v1v2 + v2End , startV2 + v1v2 + v1End)

if startV1 == Int.max || startV2 == Int.max || v1v2 == Int.max || v1End == Int.max || v2End == Int.max {
    print(-1)
}else{
//    print("start v1 to end", startV1 + v1v2 + v2End)
//    print("start v2 to end", startV2 + v1v2 + v1End)
    
    print(min(startV1 + v1v2 + v2End , startV2 + v1v2 + v1End))
}