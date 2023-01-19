import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer:[Int] = []
    // var count = "we"
    // print(count.count)
    
    for i in strlist{
        answer.append(i.count)

    }
    
    
    return answer
}