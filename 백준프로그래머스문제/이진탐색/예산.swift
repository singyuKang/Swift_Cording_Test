import Foundation

//백준 2512번 https://www.acmicpc.net/problem/2512

var arrCount = Int(readLine()!)!
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var total = Int(readLine()!)!

var start = 0
var end = arr[arrCount-1]

while start <= end {
    
    var sum = 0
    let mid = (start + end) / 2
    
    
    for i in 0..<arrCount {
        if arr[i] > mid {
            sum += mid
        }else{
            sum += arr[i]
        }
        
    }
    
    if sum > total {
        end = mid - 1
    }else{
        start = mid + 1
    }
    
    
}

print(start-1)