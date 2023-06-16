import Foundation

func solution(_ my_string:String) -> String {
    
    for i in my_string{
        var lower = i.lowercased()
        answer += lower
        
    }
    
    var my_array = Array(answer).sorted()
    
    return my_array.map({String($0)}).joined(separator : "")
}