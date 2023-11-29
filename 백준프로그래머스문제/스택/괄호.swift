import Foundation

//백준 9012번
let n = Int(readLine()!)!
var problemArray : [String] = []
for _ in 0..<n {
    problemArray.append(String(readLine()!))
}

for problem in problemArray {
    var stack : [String] = []
    var success : Bool = true
    
    for value in problem {
        if value == "(" {
            stack.append(String(value))
        }else{
            if let stackLast = stack.popLast(){   
            }else{
                success = false
            }
        }
        
    }
    
    if stack.count > 0 {
        success = false
    }
    
    if success {
        print("YES")
    }else{
        print("NO")
    }
    
    
}