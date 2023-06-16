import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic : [String : Int] = [:]
    var answer = 1
    
    for cloth in clothes {
        if let dicTest = dic[cloth[1]] {
            dic[cloth[1]]! += 1
        }else{
            dic[cloth[1]] = 1
        } 
    }
    dic.values.forEach{
        answer *= $0+1
    }
    
    
    return answer-1
}