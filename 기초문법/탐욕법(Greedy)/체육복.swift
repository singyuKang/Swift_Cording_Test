import Foundation


//테스트케이스 오류
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var dic:[Int : Int] = [:]
    var answer = 0
    for i in 1...n {
        dic[i] = 1
    }
    
    lost.forEach{
        dic[$0]! -= 1
    }
    
    reserve.forEach{
        dic[$0]! += 1
    }
    for (key, values) in dic {
        if(values == 2){
            if dic[key+1] != nil {
                // dic[key+1] += 1
                if(dic[key+1] == 0){
                    dic[key+1] = 1
                }
            }else if dic[key-1] != nil{
                if(dic[key-1] == 0){
                    dic[key-1] = 1
                }
            }else{
                
            }
            
        }
    }
    dic.values.forEach{
        if($0 > 0){
            answer += 1
        }
    }
    return answer
}