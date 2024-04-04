import Foundation

//백준 14502번 https://www.acmicpc.net/problem/14502
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


var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (input[0], input[1])
var map : [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
var zeroList : [[Int]] = []
var answer = 0


func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    var stack = array.enumerated().map { ([$0.element], $0.offset) }
    
    while stack.count > 0 {
        // print(stack)
        let now = stack.removeLast()
        
        let elements = now.0
        let index = now.1
        
        if elements.count == n {
            result.append(elements.sorted())
            continue
        }
        
        guard index+1 <= array.count-1 else { continue }
        
        for i in index+1...array.count-1 {
            stack.append((elements + [array[i]], i))
        }
        
    }
    
    return result
}

func bfs(_ map : [[Int]]) {
    let queue: Queue = Queue([])
    var mutatedMap = map
    var count = 0
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
    let dx = [0,0,-1,1] // X좌표
    let dy = [-1,1,0,0] // Y좌표
    
    for x in 0..<N {
        for y in 0..<M {
            if mutatedMap[x][y] == 2 {
                queue.push([x,y])
            }
        }
    }
    
    while queue.count > 0 {
        let myIdx = queue.pop()! as! [Int]
        mutatedMap[myIdx[0]][myIdx[1]] = 2
        
        for i in 0..<4 {
            let nx = myIdx[0] + dx[i]
            let ny = myIdx[1] + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < N && ny < M && visited[nx][ny] == false && mutatedMap[nx][ny] == 0 {
                visited[nx][ny] = true
                queue.push([nx,ny])
                
            }
        
        }
    }
 
    for x in 0..<N {
        for y in 0..<M {
            if mutatedMap[x][y] == 0 {
                count += 1
            }
            
        }
    }
    
    if answer < count {
        answer = count
    }

}



for x in 0..<N {
    let inputMap = readLine()!.split(separator: " ").map { Int(String($0))! }
    for (y,value) in inputMap.enumerated() {
        if value == 0 {
            zeroList.append([x,y])
        }
    }
    map[x] = inputMap
}

for i in combination(Array(0...zeroList.count-1), 3) {

    let firstMap = map
    
    for k in 0..<3 {
        let idx = i[k]
        let zeroX = zeroList[idx][0]
        let zeroY = zeroList[idx][1]
        map[zeroX][zeroY] = 1
    }
    bfs(map)
    
//    map BFS 실행
    map = firstMap

}

print(answer)