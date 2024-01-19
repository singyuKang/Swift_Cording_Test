import Foundation

// 백준 1753번 https://www.acmicpc.net/problem/1753
// 최소 힙 구현
struct Heap <T: Comparable> {
    var heap = [T]()

    private func getParent(_ index: Int) -> T {
        heap[index / 2]
    }

    private func getLeftChild(_ index: Int) -> T {
        heap[index * 2]
    }

    private func getRightChild(_ index: Int) -> T {
        heap[index * 2 + 1]
    }

    func isEmpty() -> Bool {
        heap.count <= 1
    }

    mutating func push(_ data: T) {
        if isEmpty() { heap.append(data) }
        var index = heap.count
        heap.append(data)

        while index > 1 {
            let parent = getParent(index)
            guard parent > data else { break }
            heap[index] = parent
            index /= 2
        }
        heap[index] = data
    }

    mutating func pop() -> T? {
        guard !isEmpty() else { return nil }
        let item = heap[1]
        let data = heap.removeLast()
        let size = heap.count - 1

        guard !isEmpty() else { return item }
        var (parent, child) = (1, 2)
        while child <= size {
            if child < size && getLeftChild(parent) > getRightChild(parent) {
                child += 1
            }
            guard data > heap[child] else { break }
            heap[parent] = heap[child]
            parent = child
            child *= 2
        }
        heap[parent] = data
        return item
    }
}

struct Node: Comparable {

    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost
    }

    init(_ node: Int, _ cost: Int) {
        self.node = node
        self.cost = cost
    }
    
    let node: Int
    let cost: Int
    
    
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (V,E) = (input[0], input[1])
let start = Int(readLine()!)!
var graph : [Int : [Node]] = [:]
var costList : [Int] = Array(repeating: Int.max, count: V+1)

for idx in 1...V {
    graph[idx] = []
}

for _ in 0..<E {
    let split = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (start, end, value) = (split[0], split[1], split[2])
    graph[start]!.append(Node(end, value))
}

var queue = Heap<Node>()
var visited : [Bool] = Array(repeating: false, count: V+1)
costList[start] = 0
queue.push(Node(start, 0))


print(graph)

while let currentNode = queue.pop() {
    let (node, cost) = (currentNode.node, currentNode.cost)
    guard !visited[node] else {
        continue
    }
    visited[node] = true
    if let edge = graph[node] {
        for next in edge {
            let (nextNode, nextCost) = (next.node , next.cost)
            guard !visited[nextNode] else {
                continue
            }
            let newCost = cost + nextCost
            if newCost < costList[nextNode] {
                costList[nextNode] = newCost
                queue.push(Node(nextNode, newCost))
            }
        }
    }
}

for i in 1...V {
    if costList[i] == Int.max {
        print("INF")
    }else{
        print(costList[i])
    }

}




