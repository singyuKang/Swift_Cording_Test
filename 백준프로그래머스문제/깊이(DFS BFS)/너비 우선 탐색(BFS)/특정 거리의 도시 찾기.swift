import Foundation

// 백준 18352번 https://www.acmicpc.net/problem/18352
var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N , M, K, X) = (split[0], split[1], split[2], split[3])
var map : [[Int]] = Array(repeating: [], count: N+1)
var visited : [Bool] = Array(repeating: false, count: N+1)
var distance : [Int] = Array(repeating: -1, count: N+1)
var isCheck : Bool = false

class Queue{
    var enqueue: [Int]
    var dequeue: [Int] = []
    
    var isEmpty: Bool{
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var count: Int{
        return enqueue.count + dequeue.count
    }
    
    init(_ queue:[Int]){
        self.enqueue = queue
    }
    
    func push(_ n: Int){
        enqueue.append(n)
    }
    
    func pop() -> Int?{
        if dequeue.isEmpty{
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}

for _ in 0..<M {
    let inputSplit = readLine()!.split(separator: " ").map { Int(String($0))! }
    map[inputSplit[0]].append(inputSplit[1])
}

func bfs() {
    let queue : Queue = Queue([X])
    distance[X] += 1

    while queue.count > 0 {
        let node = queue.pop()!
        
        for i in map[node] {
            if distance[i] == -1 {
                distance[i] = distance[node] + 1
                queue.push(i)
            }
        }
    }
}
bfs()

for i in 1...N {
    if distance[i] == K {
        print(i)
        isCheck = true
    }
}

if !isCheck {
    print(-1)
}