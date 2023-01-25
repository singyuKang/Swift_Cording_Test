import Foundation

func solution(_ n:Int) -> [Int] {
    var answer:[Int] = []
    for i in 1...n{
        if(n%i == 0){
            answer.append(Int(String(i))!)
        }
    }
    
    return answer
}