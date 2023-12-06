import Foundation

func solution(_ n:Int) -> [Int] {
    var answer_list:[Int] = []
    for i in 1...n{
        if(i%2 != 0){
            answer_list.append(i)
        }
    }
    
    
    return answer_list
}