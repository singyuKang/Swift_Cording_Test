
import Foundation


//백준 1912번

let n = Int(String(readLine()!))!
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var maxArray = Array(repeating: -9999, count: 1000001)

maxArray[0] = arr[0]

for i in 1..<n {
    
    
    maxArray[i] = max(arr[i], maxArray[i-1] + arr[i])
    
    
}

print(maxArray.max()!)
