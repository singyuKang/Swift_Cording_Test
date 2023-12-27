import Foundation

// 백준 3568번 https://www.acmicpc.net/problem/3568
var input = readLine()!.split(separator: " ")
let basicType = input[0]
input.removeFirst()

for s in input {
//    print(s)
    let str = s.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: ";", with: "")
    print(basicType, terminator: "")
    
    for i in str.reversed() {
        if !i.isLetter {
            if i == "]"{
                print("[", terminator: "")
            }else if i == "[" {
                print("]", terminator: "")
            }else {
                print(i, terminator: "")
            }
        }
    }
    
    print(" ", terminator: "")
    
    for i in str {
        if i.isLetter {
            print(i, terminator: "")
        }
    }
    
    print(";")

}
