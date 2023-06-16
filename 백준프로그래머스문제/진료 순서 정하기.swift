import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    var answer_list = Array(repeating : 1, count : emergency.count)
    for (index, number) in emergency.enumerated(){
        // print(emergency.filter({$0 > number}))
        answer_list[index] += emergency.filter({$0 > number}).count
    }
    
    return answer_list
}