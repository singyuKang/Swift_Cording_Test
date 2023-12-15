import Foundation

// 백준 1032번

let n = Int(readLine()!)!

var compareArray : [String] = []

for _ in 0..<n {
    let inputArray = readLine()!.map{String($0)}
    
    if compareArray.isEmpty {
        compareArray = inputArray
    }else{
        for compareIndex in 0..<compareArray.count {
            if compareArray[compareIndex] != inputArray[compareIndex] {
                compareArray[compareIndex] = "?"
            }
        }
    }
}


print(compareArray.joined(separator: ""))