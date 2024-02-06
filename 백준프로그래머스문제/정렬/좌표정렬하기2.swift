import Foundation

// 백준 11651 https://www.acmicpc.net/problem/11651
var inputNumber = Int(readLine()!)!
var arr : [[Int]] = []

for _ in 0..<inputNumber {
    let split = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append(split)
}

arr.sort {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    }else{
        return $0[1] < $1[1]
    }
}

for i in arr {
    print(i.map { String($0) }.joined(separator: " "))
    
}