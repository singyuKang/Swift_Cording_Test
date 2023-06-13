import Foundation


//백준 21313번
let n = Int(String(readLine()!))!

if n % 2 == 0 {
    
    for i in 0..<n {
        if(i%2 == 0){
            print(1, terminator: " ")
        }else{
            print(2, terminator: " ")
        }
    }
    
    
}else{
    for i in 0..<n-1 {
        if(i%2 == 0){
            print(1, terminator: " ")
        }else{
            print(2, terminator: " ")
        }
    }
    print(3)
}