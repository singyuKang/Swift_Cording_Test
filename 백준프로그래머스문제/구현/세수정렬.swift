import Foundation

//백준 2752번
let input = readLine()!
var inputArray = input.split(separator: " ").map { Int(String($0))! }.sorted(by: <)

print(inputArray.map{String($0)}.joined(separator : " "))
