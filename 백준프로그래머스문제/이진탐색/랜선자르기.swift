import Foundation

// https://www.acmicpc.net/problem/1654

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
var (K,N) = (split[0], split[1])
var arr : [Int] = []

for _ in 0..<K {
    let input = Int(readLine()!)!
    arr.append(input)
}

arr.sort {
    $0 < $1
}

var start = 1
var end = arr.max()!

while start <= end {

    let mid = (start + end) / 2
    var sum = 0
    
    for i in arr {
        sum += i / mid
    }
    
    if sum < N {
        end = mid-1
    }else{
        start = mid+1
    }

}

print(start-1)



