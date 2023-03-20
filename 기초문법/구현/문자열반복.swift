import Foundation

//백준 2675번
let n = Int(readLine()!)!


var arr : [String] = []
var answer:Int = 0

for _ in 0..<n {
    arr.append(String(readLine()!))
}


for i in arr {
    let split = i.split(separator: " ")
    for k in split[1] {
        for _ in 0..<Int(split[0])! {
            print(k, terminator: "")
        }
    }
    print("")
}