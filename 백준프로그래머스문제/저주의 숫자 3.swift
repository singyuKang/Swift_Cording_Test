import Foundation

func solution(_ n:Int) -> Int {
    
    var answer = 1
    var count = 1
    
    while(count < n+1){
        
        while(answer % 3 == 0 || String(answer).contains("3")){
            answer += 1
        }
        answer += 1
        count += 1
    }
    
    return answer-1
}