import Foundation

//프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/178870
func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    
    var answerArray: [[Int]] = []
    var sequence = sequence
    var sum = sequence[0]
    var left = 0
    var right = 0
    
    //두 포인터
    while left < sequence.count || right < sequence.count {
        if sum == k {
            answerArray.append([left, right])
        }
        if sum < k {
            right += 1
            if right == sequence.count {
                break
            }
            sum += sequence[right]
        }else {
            if left == sequence.count {
                break
            }
            sum -= sequence[left]
            left += 1
        }
        
    }
    
    let answer = answerArray.sorted {
        if ($0[1] - $0[0]) == ($1[1] - $1[0]) {
            return $0[0] < $1[0]
        }else{
            return $0[1] - $0[0] < $1[1] - $1[0]
        }
    }
    
    return answer.count > 0 ? answer[0] : [0,0]
}