import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var answer = -9999
    var visited : [Bool] = Array(repeating : false, count : dungeons.count)
    
    func dfs(_ count : Int, _ pirodo : Int){

        if answer < count {
            answer = count
        }     
        for i in 0..<dungeons.count {
            if visited[i] == false && dungeons[i][0] <= pirodo {
                visited[i] = true
                dfs(count+1,pirodo-dungeons[i][1])
                visited[i] = false
        
            }
        }

    }
    
    dfs(0,k)
    

    return answer
}