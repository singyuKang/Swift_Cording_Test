import Foundation

//백준 10845번
//func readLine(strippingNewline : Bool = true) -> String?

let n = Int(readLine()!)!
var problemArray : [String] = []
var queue : [Int] = []
for _ in 0..<n {
    let input = String(readLine()!).split(separator: " ").map{String($0)}
    
    if input[0] == "push" {
        queue.append(Int(input[1])!)
    }else if input[0] == "pop"{
        if queue.count > 0 {
            print(queue.removeFirst())
        }else{
            print(-1)
        }
    }else if input[0] == "size"{
        print(queue.count)
    }else if input[0] == "empty"{
        if queue.isEmpty {
            print(1)
        }else{
            print(0)
        }
    }else if input[0] == "front"{
        if let queueFirst = queue.first {
            print(queueFirst)
        }else{
            print(-1)
        }
    }else if input[0] == "back"{
        if let queueLast = queue.last{
            print(queueLast)
        }else{
            print(-1)
        }
    }
}