import Foundation

// 백준 10814번 https://www.acmicpc.net/problem/10814
var inputNumber = Int(readLine()!)!
var strArray : [[String]] = []

for _ in 0..<inputNumber {
  
    var split = readLine()!.split(separator: " ").map { String($0) }
    strArray.append(split)
    
}

strArray.sort {
    return Int($0[0])! < Int($1[0])!
}

for i in strArray {
    print(Int(i[0])!, terminator: " ")
    print(i[1])
}
