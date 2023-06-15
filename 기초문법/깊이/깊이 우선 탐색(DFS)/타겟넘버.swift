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

//타겟넘버 queue 를 통한 풀이
func solution1(_ numbers:[Int], _ target:Int) -> Int {
    var queue:[[Int]] = []
    queue.append([-numbers[0], 0])
    queue.append([numbers[0], 0])
    var answer = 0
    
    // print(queue)

    while !queue.isEmpty {
        print(queue)
        let q = queue.removeLast()
        let num = q[0]
        var idx = q[1]
        idx += 1
        if idx < numbers.count {
            queue.append([num+numbers[idx], idx])
            queue.append([num-numbers[idx], idx])
        } else {
            if target == num {
                answer += 1
            }
        }
    }

    return answer
}


func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer = 0
    var index = 1
    
    func dfs(_ value : Int,_ myIndex : Int){
        
        if myIndex == numbers.count {
            if value == target {
                answer += 1
            }
            return
        }
 
        dfs(value + numbers[myIndex], myIndex + 1)
        dfs(value - numbers[myIndex], myIndex + 1)
        
    }
    
    func bfs(){
        var queue :[[Int]] = []
        queue.append([numbers[0], 0])
        queue.append([-numbers[0], 0])
        
        
        while !queue.isEmpty {
            let first = queue.removeLast()
            let (number, index) = (first[0], first[1])
            
            if index < numbers.count-1 {
                queue.append([number + numbers[index+1], index + 1])
                queue.append([number - numbers[index+1], index + 1])
            }else{
                if number == target {
                    answer += 1
                }
            }
        }
    }
    
    bfs()
    
    return answer
    

}