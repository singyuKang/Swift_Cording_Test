import Foundation
//프로그래머스 연석된 부분 수열의 합
//완전 탐색 풀이 시간초과 실패
func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    
    var answer : [[Int]] = []
    
    for idx in 0..<sequence.count {
        
        var value = 0
        var startidx = idx
        var endidx = idx
        var answerArray : [Int] = []
        while endidx < sequence.count {
            value += sequence[endidx]
            if value == k {

                answerArray.append(startidx)
                answerArray.append(endidx)
              
    
                break
            }else if value < k {
                endidx += 1
            }else if value > k{
                break
            }
    
        }
        if answerArray.count > 0 {
            answer.append(answerArray)
        }
    } 
    var indexMinusValue = 999999
    var leftAnswerIndex = 0
    var rightAnswerIndex = 0
    
    for i in answer {
        var indexValue = i[1] - i[0]
        if indexValue < indexMinusValue {
            leftAnswerIndex = i[0]
            rightAnswerIndex = i[1]
            indexMinusValue = indexValue
        }
        
    }
    
    return [leftAnswerIndex, rightAnswerIndex]
}