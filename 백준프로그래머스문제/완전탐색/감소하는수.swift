import Foundation
////백준 1038번  https://www.acmicpc.net/problem/1038

struct Node {
    var count : Int
    var value : [Int]
}

var N = Int(readLine()!)!
var arr: [Int] = Array(0...9)
var answer = 9
var queue : [Node] = [Node(count: 1, value: [1]) , Node(count: 2, value: [2]) , Node(count: 3, value: [3]), Node(count: 4, value: [4]) , Node(count: 5, value: [5]), Node(count: 6, value: [6]), Node(count: 7, value: [7]), Node(count: 8, value: [8]), Node(count: 9, value: [9])]

if N > 1022 {
    print(-1)
    
}else{
    if N == 0 {
        print(0)
    }else{
        while true {
            if queue.count == 0 {
                print(-1)
                exit(0)
            }
            let pop = queue.removeFirst()
            if pop.count == N {
                print(pop.value.map{String($0)}.joined(separator: ""))
               break
            }
            
            for i in 0..<10 {
                if pop.value.last! > i {
                    answer += 1
                    queue.append(Node(count: answer, value: pop.value + [i]))
                }
            }
        }
    }
    

}