import Foundation


// 프로그래머스 완전탐색 구현 https://school.programmers.co.kr/learn/courses/30/lessons/142086
func solution(_ s:String) -> [Int] {
    
    var answer : [Int] = Array(repeating : -1 , count : s.count)
    var sArr : [String] = s.map { String($0) }
    var sCount = s.count
    
    for (idx, value) in sArr.enumerated() {
      
        let startValue = value
        var temp = -1
        for k in 0..<idx {
            if sArr[k] == value {
                temp = idx - k
            }
        }
       
        answer[idx] = temp
   
    }
    

    
    
    return answer
}