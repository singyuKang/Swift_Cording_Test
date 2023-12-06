import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    
    var answer:Int = 1
    
    for i in box{
        answer *= i/n
        
    }
    return answer
}