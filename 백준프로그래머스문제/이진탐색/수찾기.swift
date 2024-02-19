import Foundation

// 백준 1920번 https://www.acmicpc.net/problem/1920

let n = Int(readLine()!)!
var nArray = readLine()!.split(separator: " ").map { Int($0)! }.sorted{ $0 < $1 }
let m = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<m {
    let targetValue = mArray[i]
    var start = 0
    var end = n-1

    while start < end {
        let mid = (start + end) / 2
        
        if nArray[mid] >= targetValue {
            end = mid
        }else{
            start = mid + 1
        }
    }
    
    if nArray[start] == targetValue {
        print(1)
        continue
    }else{
        print(0)
        continue
    }
    
    
}