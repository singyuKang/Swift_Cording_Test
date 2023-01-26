import Foundation

func solution(_ n:Int) -> Int {
    
    var answer = 0
    
    if(n>3){
        for i in 4...n{
            
            var count = 0
            for a in 1...i{
                if(i % a == 0){
                    count += 1
                }
            }
            
            if(count >= 3){
                answer += 1
            }
           
        }
        return answer
    }else{
        return 0
    }

    
}