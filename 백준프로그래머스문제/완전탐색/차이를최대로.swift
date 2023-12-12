

import Foundation

//백준 10819번

let n = Int(readLine()!)!
var numberList = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = 0
var indexArray : [Int] = Array(0...n-1)

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

let permutationArray = permutation(indexArray, indexArray.count)

for permutation in permutationArray {
    var tempValue = 0
    
    for permutationIndex in 0..<permutation.count-1 {
        tempValue += abs(numberList[permutation[permutationIndex]] - numberList[permutation[permutationIndex+1]])
    }
    if answer < tempValue {
        answer = tempValue
    }

    
}

print(answer)