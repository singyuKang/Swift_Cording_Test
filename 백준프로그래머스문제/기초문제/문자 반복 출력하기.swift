import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer_string = ""
    
    for i in my_string{
        for k in 1...n{
            answer_string += String(i)
        }
    }
    
    // print(answer_string)
    
    
    
    return answer_string
}