import Foundation

let n = Int(readLine()!)!


var arr : [Int] = []
var answer:Int = 0

for i in 0..<n {
    var num = Int(readLine()!)!
    if(num == 0){
        arr.removeLast()
    }else{
        arr.append(num)
    }
}

print(arr.reduce(0,+))