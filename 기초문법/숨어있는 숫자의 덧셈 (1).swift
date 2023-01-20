import Foundation

func solution(_ my_string:String) -> Int {
    
    print(my_string.filter({$0.isNumber}).map({Int(String($0))!}))
    
    
    var answer = 0
    
    for i in my_string{
        if(i.isNumber){
            answer += Int(String(i))!
        }
    }
    
    
    return answer
}