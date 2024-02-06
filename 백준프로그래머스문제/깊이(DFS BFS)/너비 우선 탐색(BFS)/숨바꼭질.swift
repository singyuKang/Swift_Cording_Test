import Foundation

// 백준 1697번 https://www.acmicpc.net/problem/1697 시간초과 visited 처리로 해결

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head <= queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
}



var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = 0
var (N,K) = (split[0], split[1])
var queue  = Queue<[Int]>()
var depth = 0
var visited = Array(repeating: false, count: 100001)
visited[N] = true
queue.enqueue([N,0])

while !queue.isEmpty {

    let popValue = queue.dequeue()!
    let place = popValue[0]
    let depth = popValue[1]
    
    if place == K {
        answer = depth
        break
    }
    
    for i in 0..<3 {
        var nextPlace = 0
        
        switch i {
            
        case 0 :
            nextPlace = place - 1
        case 1 :
            nextPlace = place + 1
        default :
            nextPlace = place * 2
        }
        
        if nextPlace >= 0 && nextPlace <= 100000 && !visited[nextPlace] {
            visited[nextPlace] = true
            queue.enqueue([nextPlace, depth+1])
        }
    
    }

}

print(answer)