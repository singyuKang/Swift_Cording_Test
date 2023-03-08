//백준 1316번
import Foundation

let n = Int(readLine()!)!

var arr : [String] = []
var answer:Int = 0

for _ in 0..<n {
    arr.append(String(readLine()!))
}


for text in arr {
    var myArray:[Character] = []
    
    for char in text {
        if !myArray.contains(char) {
            myArray.append(char)
        }else if myArray.last != char {
            myArray.removeAll()
            break
        }
    }
    
    if myArray.count != 0 {
        answer += 1
    }
    
}

print(answer)
