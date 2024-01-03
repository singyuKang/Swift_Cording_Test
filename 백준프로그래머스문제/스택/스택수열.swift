import Foundation

//백준 1874번  https://www.acmicpc.net/problem/1874

struct Stack<T> {
    var elements: [T] = []
  
    var count : Int {
        return elements.count
    }
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    mutating func push(_ element: T) {
        elements.append(element)
    }
    func top() -> T? {
        return elements.last
    }
}


var input = Int(readLine()!)!
var inputArray : [Int] = []
var answer : [String] = []
var stack = Stack<Int>()
var count = 1


for _ in 0..<input {
    inputArray.append(Int(readLine()!)!)
}



for i in inputArray {

    if let topElement = stack.top() {
        if i == topElement {
            let _ = stack.pop()
            answer.append("-")
        }else{
            if count <= i {
                for k in count...i {
                    answer.append("+")
                    stack.push(k)
                }
                count = i+1
                let _ = stack.pop()
                answer.append("-")
            }else{
                answer = ["NO"]
                break
            }
        }
    }else{
        
        for k in count...i {
            answer.append("+")
            stack.push(k)
        }
        count = i+1
        let _ = stack.pop()
        answer.append("-")
    
    }

}


for str in answer {
    print(str)
}
