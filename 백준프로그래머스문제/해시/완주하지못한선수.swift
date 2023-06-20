
import Foundation


// 프로그래머스
func solution(_ participant : [String],_ completion : [String]) -> String {
    
    var dic : [String : Int] = [:]
    
    
    participant.forEach{ data in
        if let dicValue = dic[data]{
            dic[data]! += 1
        }else{
            //dic[data] = 1 로 접근하면 오류
            dic.updateValue(1, forKey: data)
        }
    }
    


    completion.forEach{ data in
        dic[data]! -= 1
    }
    
    for i in dic {
        if i.value == 1 {
            return i.key
        }
    }



    
    return "ERROR"

}

print(solution(["mislav", "stanko", "mislav", "ana"], ["stanko", "ana", "mislav"]))