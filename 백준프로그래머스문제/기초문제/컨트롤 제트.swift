import Foundation

func solution(_ s:String) -> Int {
    
    var answer = 0
    
    var my_array = s.components(separatedBy : " ")
    
    for (index , element) in my_array.enumerated(){
        if(my_array[index] == "Z"){
            answer -= Int(String(my_array[index-1]))!
        }else{
            answer += Int(String(element))!
        }
    }
    
    
    return answer
}