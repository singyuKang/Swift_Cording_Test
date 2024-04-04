import Foundation

//백준 7569번 https://www.acmicpc.net/problem/7569
class Queue<T>{
        var enqueue: [T]
        var dequeue: [T] = []
        
        var isEmpty: Bool{
            return enqueue.isEmpty && dequeue.isEmpty
        }
        var count: Int{
            return enqueue.count + dequeue.count
        }
        
        init(_ queue:[T]){
            self.enqueue = queue
        }
        
        func push(_ n: T){
            enqueue.append(n)
        }
        
        func pop() -> T?{
            if dequeue.isEmpty{
                dequeue = enqueue.reversed()
                enqueue.removeAll()
            }
            return dequeue.popLast()
        }
}

    let input = readLine()!.split(separator: " ").map { Int(String($0))! }

    let (y,x,h) = (input[0], input[1],input[2])
    var map : [[Int]] = Array(repeating: Array(repeating: 0, count: y), count: x*h)
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: y), count: x*h)
    var answer = -1
    
    for k in 0..<x*h {
        let mapX = readLine()!.split(separator: " ").map { Int(String($0))! }
        map[k] = mapX
    }
  
//    print(map)
    var queue : Queue = Queue([])
    let dx : [Int] = [0,0,1,-1,x,-x]
    let dy : [Int] = [1,-1,0,0,0,0]

    func bfs() {
        while !queue.isEmpty {
            answer += 1
            for _ in 0..<queue.count {
                let currentIdx = queue.pop() as! [Int]
                for i in 0..<6 {
                    let nx = currentIdx[0] + dx[i]
                    let ny = currentIdx[1] + dy[i]
                    if nx >= 0 && ny >= 0 && nx < x*h && ny < y && map[nx][ny] == 0 {
                        map[nx][ny] = 1
                        queue.push([nx,ny])
                    }
                }
            }
            
        }
                
        if map.flatMap({$0}).contains(0){
            answer = -1
        }
        
        print(answer)

    }

    for x1 in 0..<x*h {
        for y1 in 0..<y {
            if map[x1][y1] == 1 {
                queue.push([x1,y1])
            }
        }
    }

    bfs()


