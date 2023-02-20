import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer = 0
    var count = 0
    
    
    func dfs(_ count : Int, _ index : Int ) -> Void {                        
        if(index >= numbers.count){
            if(count == target){
                answer += 1
            }
            return
        }
        dfs(count + numbers[index], index+1)
        dfs(count - numbers[index], index+1)
}
    
    dfs(0, 0)
    
    
    
    return answer
}