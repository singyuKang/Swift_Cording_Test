import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/42895

func solution(_ N:Int, _ number:Int) -> Int {
    
    
    var answer = -1
    
    func dfs(_ count:  Int, _ now : Int ){
        
        if count > 8 {
            return
        }
        
        if now == number {
            
//             같을때 처리
            if count < answer || answer == -1 {
                answer = count
            }
            
            return
        }
        
        var nowCount = 0
        for i in 0..<8 { 
            // if answer != -1 && answer < count + 1 + i {
            //     break
            // }
            nowCount = nowCount * 10 + N
            dfs(count + 1 + i , now + nowCount)
            dfs(count + 1 + i , now - nowCount)
            dfs(count + 1 + i , now * nowCount)
            dfs(count + 1 + i , now / nowCount)
        }
        
    }
    
    dfs(0,0)

    
    return answer
}