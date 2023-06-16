import Foundation


//백준 2751번
var n = Int(readLine()!)!
var inputArray : [Int] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    inputArray.append(input)
}

inputArray.sort(by: <)

for i in inputArray {
    print(i)
}