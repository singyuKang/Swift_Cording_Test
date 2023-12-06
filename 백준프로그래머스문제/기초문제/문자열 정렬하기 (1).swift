import Foundation

func solution(_ my_string:String) -> [Int] {
    var answer : [Int] = []
    
    for i in my_string{
        if(i.isNumber){
            answer.append(Int(String(i))!)
        }
    }
    
    return answer.sorted()
}