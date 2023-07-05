import Foundation


var n = Int(readLine()!)!
var nArray: [Int] = readLine()!.split(separator: " ").map({Int(String($0))!})

print(nArray.min()!, terminator: " ")
print(nArray.max()!)