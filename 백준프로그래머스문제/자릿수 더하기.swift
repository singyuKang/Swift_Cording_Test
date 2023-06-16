import Foundation

func solution(_ n:Int) -> Int {
    
    let n_string :String = String(n)
    var answer:Int = 0
    
    
    for i in String(n){
        answer = answer + Int(String(i))!
        // print(Int(String(i)))
    }
    
    
    return answer
}