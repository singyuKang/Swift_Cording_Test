import Foundation

//백준 2455번
var count = 0
var answer : [Int] = []

for _ in 0..<4 {
    let input = readLine()!
    let inputArray = input.split(separator: " ").map{Int(String($0))!}
//    print(inputArray[1]-inputArray[0])
    count += (inputArray[1]-inputArray[0])
    answer.append(count)
}
print(answer.max()!)