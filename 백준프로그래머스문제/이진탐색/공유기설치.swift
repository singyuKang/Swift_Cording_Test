import Foundation

//백준 2110번 https://www.acmicpc.net/problem/2110

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (input[0], input[1])
var arr : [Int] = []

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var start = 1
var end = arr[N-1] - arr[0]

while start <= end {
    
    let mid = (start + end)/2
    var selectCount = 1
    var selectHouse = arr[0]
    
    
    for i in 1..<N {
        let checkHouse = arr[i]
        if  checkHouse - selectHouse >= mid {
            selectCount += 1
            selectHouse = checkHouse
        }
    }
    
    if selectCount < M {
        end = mid - 1
    }else{
        start = mid + 1
    }
}

print(end)