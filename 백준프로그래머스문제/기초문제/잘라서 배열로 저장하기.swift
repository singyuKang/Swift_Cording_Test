import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var answer:[String] = []
    var temp = ""
    for i in my_str{
        temp += String(i)
        if(temp.count == n){
            answer.append(temp)
            temp = ""
        }
    }
    // print(answer)
    if(temp.count > 0){
        answer.append(temp)
    }
    
    
    
    return answer
}