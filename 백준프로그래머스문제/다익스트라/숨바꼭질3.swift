import Foundation


//백준 13549번 https://www.acmicpc.net/problem/13549 
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

    let node: Int
    let cost: Int

    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost
    }

    init(_ node: Int, _ cost: Int) {
        self.node = node
        self.cost = cost
    }

}

// Array 로 구현한 Queue
struct ArrayQueue<T> {
    // 빈 Array 선언
    private var queue: [T] = []

    // Queue 내 원소 개수
    public var count: Int {
        return queue.count
    }

    // Queue 가 비었는지
    public var isEmpty: Bool {
        return queue.isEmpty
    }

    // 삽입 메소드
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }

    // 삭제 메소드
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }

    // Queue 전체 삭제
    public mutating func clear() {
        queue.removeAll()
    }
}


////https://www.acmicpc.net/problem/13549
var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (start, end) = (split[0], split[1])
var dist : [Int] = Array(repeating: Int.max, count: 100001)
var queue : ArrayQueue<Node> = ArrayQueue()
dist[start] = 0
queue.enqueue(Node(start, 0))


while queue.count > 0 {
    let popFirst = queue.dequeue()
    
    if popFirst!.node > 100000 || popFirst!.node < 0 {
        continue
    }
        
    if popFirst!.node * 2 <= 100000 {
        let newCost = popFirst!.cost
        if dist[popFirst!.node * 2] > newCost {
            dist[popFirst!.node * 2] = newCost
            queue.enqueue(Node(popFirst!.node * 2, newCost))
            
        }
    }
    
    if popFirst!.node + 1 <= 100000 {
        let newCost = popFirst!.cost + 1
        if dist[popFirst!.node+1] > newCost {
            dist[popFirst!.node+1] = newCost
            queue.enqueue(Node(popFirst!.node+1 , newCost))
            
        }
    }
    
    if popFirst!.node - 1 >= 0 {
        let newCost = popFirst!.cost + 1
        if dist[popFirst!.node-1] > newCost {
            dist[popFirst!.node-1] = newCost
            queue.enqueue(Node(popFirst!.node-1 , newCost))
            
        }
    }
}
print(dist[end])

