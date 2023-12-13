import Foundation

//let n = Int(readLine()!)!

var inputList = readLine()!.split(separator: " ").map{Int(String($0))!}
var inputCount = inputList[0]
var targetValue = inputList[1]
var numberList = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = 0
func permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    var visited = Array(repeating: false, count: array.count)
    
    func cycle(_ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        
        for i in 0..<array.count {
            if visited[i] {
                continue
            } else {
                visited[i] = true
                cycle(now + [array[i]])
                visited[i] = false
            }
        }
    }
    
    cycle([])
    
    return result
}

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

let combinationList = combination(numberList, 3)

for i in combinationList {
    var value = 0
    
    for k in i {
        value += k
    }

    if value <= targetValue && targetValue - value <= targetValue - answer {
        answer = value
    }
    
    
}

print(answer)
