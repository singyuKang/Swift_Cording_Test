import Foundation

func factorial(_ n:Int) -> Int {
    if(n == 0){
        return 1
    }
    if(n == 1){
        return 1
    }
    return n * factorial(n-1)
    
}


func solution(_ n:Int) -> Int {
    
    var result = 0
    
    while factorial(result) <= n {
        result += 1
    }
    
    
    
    return result-1
}