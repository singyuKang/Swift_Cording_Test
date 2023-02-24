import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var prioritiesArray = priorities
    var location_index = location 
    var answer = 0    
    
    while(!prioritiesArray.isEmpty){
        let target = prioritiesArray.removeFirst()
        let isBiggerThanTarget = prioritiesArray.contains{$0 > target}
        // print(isBiggerThanTarget)
        if isBiggerThanTarget {
            prioritiesArray.append(target)
            location_index = location_index == 0 ? prioritiesArray.count-1  : location_index-1
        }else{
            answer += 1
            if(location_index == 0){
                break
            }
            
            location_index -= 1
            
        }
        
        
    }
    
    // print(answer)
    
    
    
    
    
    return answer
}