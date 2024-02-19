import Foundation

//백준 2805번 https://www.acmicpc.net/problem/2805
// 반복문으로 구현하기
func binarySearch(_ array: [Int], num: Int) -> Bool {
    var start = 0
    var end = (array.count - 1)
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] == num { return true }
        if array[mid] > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return false
}

var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (split[0], split[1])
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer : [Int] = []
arr.sort {
    $0 < $1
}

var start = 0
var end = arr.max()!

while start <= end {

    let mid = (start + end) / 2
    var sum = 0

    for i in arr {
        if i-mid > 0 {
            sum += i-mid
        }
    }
    
    if sum < M {
        end = mid-1
    }else{
        start = mid+1
    }

}

print(start-1)