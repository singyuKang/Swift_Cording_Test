import Foundation


//백준 25400번

var inputNumber = Int(readLine()!)!
//var inputArray = readLine()!.
var inputArray : [Int] = readLine()!.split(separator: " ").map({Int(String($0))!})
var removed = 0
var currentNumber = 1

while inputArray.count > 0 {
    let left = inputArray.removeFirst()
    if left == currentNumber {
        currentNumber += 1
    }else{
        removed += 1
    }

}
print(removed)
