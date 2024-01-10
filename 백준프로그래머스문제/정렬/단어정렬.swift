import Foundation

// 백준 1181번 https://www.acmicpc.net/problem/1181

var n = Int(readLine()!)!
var stringArray : Set<String> = []

for _ in 0..<n {
    stringArray.insert(String(readLine()!))
}

let answerArray = stringArray.sorted {
    if $0.count == $1.count {
        return $0 < $1
    }else{
        return $0.count < $1.count
    }
}

for str in answerArray {
    print(str)
}

