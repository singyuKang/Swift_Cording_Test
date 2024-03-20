import Foundation

// 백준 4949번  https://www.acmicpc.net/problem/4949

var checkArray : [String] = ["(", "["]

while true {
    let stringArr : [String] = readLine()!.map { String($0) }
    var stack : [String] = []
    var answer = "yes"
    
    if stringArr.count == 1 && stringArr.last == "." {
        break
    }
    
    
    for str in stringArr {
        if checkArray.contains(str){
            stack.append(str)
        }
        
        if str == ")" {
            if let stackPop = stack.popLast() {
                if stackPop == "(" {
                    continue
                }else{
                    answer = "no"
                    break
                }
            }else{
                answer = "no"
            }
        }
        
        if str == "]" {
            if let stackPop = stack.popLast() {
                if stackPop == "[" {
                    continue
                }else{
                    answer = "no"
                    break
                }
            }else{
                answer = "no"
            }
        }
        
        
        
    }
    if stack.count > 0 {
        answer = "no"
    }
    print(answer)
    
    
}

// refactoring 
func solution() {
    var checkArray : [String] = ["(", "["]

while true {
    let stringArr : [String] = readLine()!.map { String($0) }
    var stack : [String] = []
    var answer = "yes"
    
    if stringArr.count == 1 && stringArr.last == "." {
        break
    }
    
    for str in stringArr {
        if checkArray.contains(str){
            stack.append(str)
        }
        
        if str == ")" {
            guard let stackPop = stack.popLast() else {
                answer = "no"; break
            }
            if stackPop != "(" {
                answer = "no"
                break
            }
        }
        
        if str == "]" {
            guard let stackPop = stack.popLast() else {
                answer = "no"
                break
            }
            if stackPop != "[" {
                answer = "no"
                break
            }
        }

    }
    
    if !stack.isEmpty {
        answer = "no"
    }
    print(answer)
    
    
}
}