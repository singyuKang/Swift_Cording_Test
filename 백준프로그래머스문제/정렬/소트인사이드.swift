import Foundation

// 백준 1427번 https://www.acmicpc.net/problem/1427

var input = readLine()!.map { Int(String($0))! }


input.sort {
    return $0 > $1
}

print(input.map{  String($0) }.joined(separator: ""))