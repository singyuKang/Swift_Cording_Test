func myAnswer(){
    import Foundation
////백준 16236번  https://www.acmicpc.net/problem/16236
// Array 로 구현한 Queue
struct Queue<T> {
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

struct Node {
    var x : Int
    var y : Int
    var cost : Int
}

var dx : [Int] = [1,-1,0,0]
var dy : [Int] = [0,0,1,-1]
var N = Int(readLine()!)!
var map : [[Int]] = Array(repeating: [], count: N)
var sharkX = 0
var sharkY = 0
var babySharkSize = 2
var sharkEatFistCount = 0

for x in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    map[x] = input
    
    for (y , value) in input.enumerated() {
        if value == 9 {
            sharkX = x
            sharkY = y
        }
    }
    
}

func bfs() -> Int? {
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
    
    visited[sharkX][sharkY] = true
    
    var queue : Queue<Node> = Queue()
    queue.enqueue(Node(x: sharkX, y: sharkY, cost: 0))
    var min = Int.max
    var fish : [[Int]] = []
    
    while !queue.isEmpty {
        let popFirst = queue.dequeue()!
        let (x,y,cost) = (popFirst.x , popFirst.y, popFirst.cost)
        
        if cost > min {
            continue
        }
        
        if (1..<babySharkSize).contains(map[x][y]){
            min = cost
            fish.append([x,y])
        }
        
        
        for i in 0..<4 {
            let nextX = x + dx[i]
            let nextY = y + dy[i]
            
            
            if (0..<N).contains(nextX) && (0..<N).contains(nextY) && !visited[nextX][nextY] && map[nextX][nextY] <= babySharkSize {
                visited[nextX][nextY] = true
                queue.enqueue(Node(x: nextX, y: nextY, cost: cost+1))
            }
        }
        
        
    }
    print(visited)
    print(fish)
    
    if fish.count == 0 {
        return nil
    }
    
//    거리가 같을때 가장 위의 물고기
    fish.sort {
        if $0[0] == $1[0] {
            return $0[1] < $1[1]
        }
        return $0[0] < $1[0]
    }
    
    let babyEatFishXY = fish.first!
    sharkEatFistCount += 1
    
    if sharkEatFistCount == babySharkSize {
        babySharkSize += 1
        sharkEatFistCount = 0
    }
    
    map[babyEatFishXY[0]][babyEatFishXY[1]] = 0
    sharkX = babyEatFishXY[0]
    sharkY = babyEatFishXY[1]
    
    
    return min
    
}

var answer = 0

while true {
    if let time = bfs() {
        answer += time
    }else{
        print(answer)
        break
    }

}

}