import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/43238
func solution(_ n:Int, _ times:[Int]) -> Int64 {
    
    
    var n = n
    var times : [Int] = times.sorted()
    var start = 1
    var end = times[times.count-1] * n 
    var result = 0
    
    while start <= end {
        
        let mid = (start + end) / 2
        var maxPeople = 0
        
        for i in 0..<times.count {
            maxPeople += mid / times[i]  
        }
        
        if maxPeople < n {
            start = mid + 1
        }else {
            end = mid - 1
            result = mid
        }
         
    }
    
    // print(result)

    
    return Int64(result)
}