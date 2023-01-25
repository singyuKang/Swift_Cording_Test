import Foundation

func solution(_ my_string:String) -> String {
    var answer:String = ""
    for i in my_string{
        var my_string = String(i)
        if(my_string.uppercased() == my_string){
            answer += my_string.lowercased()
        }else{
            answer += my_string.uppercased()
        }
    }
    
    return answer
}