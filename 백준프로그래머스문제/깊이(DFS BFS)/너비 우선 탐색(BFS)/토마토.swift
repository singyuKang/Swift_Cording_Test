import Foundation


// 백준 7576번 https://www.acmicpc.net/problem/7576
func solutionOne(){
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (M, N) = (input[0], input[1])
    var tomatoMap : [[Int]] = []
    var dx = [0,0,-1,1] // X좌표
    var dy = [-1,1,0,0] // Y좌표
    var queue : [[Int]] = []
    var answer = -1

    for _ in 0..<N {
        let split = readLine()!.split(separator: " ").map { Int(String($0))! }
        tomatoMap.append(split)
    }


    for x in 0..<N {
        for y in 0..<M {
            if tomatoMap[x][y] == 1 {
                queue.append([x,y])
            }
        }
    }

    while queue.count > 0 {
        answer += 1
        for _ in 0..<queue.count {
            let tomato = queue.removeFirst()
            for i in 0..<4 {
                let nx = tomato[0] + dx[i]
                let ny = tomato[1] + dy[i]
                
                if nx < 0 || nx > N-1 || ny < 0 || ny > M-1 {
                    continue
                }else{
                    if tomatoMap[nx][ny] == 0 {
                        tomatoMap[nx][ny] = 1
                        queue.append([nx, ny])
                    }
                }
            }
        }
        
    }

    if tomatoMap.flatMap({$0}).contains(0){
        answer = -1
    }
        
    print(answer)
}



func solutionTwo(){
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (M, N) = (input[0], input[1])
    var tomatoMap : [[Int]] = []
    var dx = [0,0,-1,1] // X좌표
    var dy = [-1,1,0,0] // Y좌표
    var queue: Queue = Queue([])
    var answer = -1

    //시간 초과 해결
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




    for _ in 0..<N {
        let split = readLine()!.split(separator: " ").map { Int(String($0))! }
        tomatoMap.append(split)
    }


    for x in 0..<N {
        for y in 0..<M {
            if tomatoMap[x][y] == 1 {
                queue.push([x,y])
            }
        }
    }

    while queue.count > 0 {
        answer += 1
        for _ in 0..<queue.count {
            let tomato = queue.pop() as! [Int]
            for i in 0..<4 {
                let nx = tomato[0] + dx[i]
                let ny = tomato[1] + dy[i]
                
                if nx < 0 || nx > N-1 || ny < 0 || ny > M-1 {
                    continue
                }else{
                    if tomatoMap[nx][ny] == 0 {
                        tomatoMap[nx][ny] = 1
                        queue.push([nx, ny])
                    }
                }
            }
        }
        
    }

    if tomatoMap.flatMap({$0}).contains(0){
        answer = -1
    }
        
    print(answer)






}