import Foundation

// 백준 11650번  https://www.acmicpc.net/problem/11650

var inputNumber = Int(readLine()!)!
var answerArray : [[Int]] = []



for _ in 0..<inputNumber {
    let split = readLine()!.split(separator: " ").map { Int(String($0))! }
    answerArray.append(split)
}

answerArray.sort{
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    }else{
        return $0[0] < $1[0]
    }
}

for i in answerArray {
    print(i[0],i[1])
}