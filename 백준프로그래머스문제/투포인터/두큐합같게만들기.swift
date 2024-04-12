import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/118667
func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    var queue1 = queue1
    var queue2 = queue2
    
    
    var queue1Sum = queue1.reduce(0,+)
    var queue2Sum = queue2.reduce(0,+)
    var target = (queue1Sum + queue2Sum) / 2
    var answer = 0 
    var arr : [Int] = queue1 + queue2
    var left : Int = 0
    var right : Int = queue1.count
    
    if (queue1Sum + queue2Sum) % 2 != 0 {
        return -1
    }else if(queue1.max()! > target || queue2.max()! > target){
        return -1
    }
    
    while left < arr.count , right < arr.count {
        
        if queue1Sum < target {
            queue1Sum += arr[right]
            right += 1
        }else if queue1Sum > target{
            queue1Sum -= arr[left]
            left += 1
        }else if queue1Sum == target {
            break
        }
        
        answer += 1
    }
        
    if queue1Sum != target {
        return -1
    }
    
    
    
    
    
    
    return answer
}