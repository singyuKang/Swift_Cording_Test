import Foundation

let input = String(readLine()!)
var myArray = Array(repeating: 0, count: 26)

for i in input {
    myArray[Int(exactly: i.asciiValue!)!-97] += 1
}

print(myArray.map{String($0)}.joined(separator: " "))
