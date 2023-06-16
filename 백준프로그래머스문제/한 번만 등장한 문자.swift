import Foundation

func solution(_ s:String) -> String {
    
    var result = Array(s).map({String($0)})
    var answer:[String] = []

    
    for i in result {
        if(result.filter({$0 == i}).count == 1){
            answer.append(String(i))
        }
    }
    
    return answer.sorted().joined(separator : "")
}