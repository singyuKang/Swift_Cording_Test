import Foundation

var n = Int(readLine()!)!
var mystack : [Int] = []



for _ in 0..<n {
    let output = readLine()!.split(separator: " ")
    
    if output.count > 1 {
        let (_, value) = (output[0], Int(output[1])!)
        mystack.append(value)
    }else{
        let myString : String = String(output[0])
        if myString == "top" {
            if let value = mystack.last {
                print(value)
            }else{
                print(-1)
            }
        }else if myString == "size" {
            print(mystack.count)
        }else if myString == "empty"{
            if mystack.isEmpty {
                print(1)
            }else{
                print(0)
            }
        }else if myString == "pop"{
            if let value = mystack.popLast(){
                print(value)
            }else{
                print(-1)
            }
        }
        
    }
}