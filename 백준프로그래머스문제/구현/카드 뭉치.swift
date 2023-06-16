import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var idx1 = 0
    var idx2 = 0
    var answer = true
    
    for i in goal {
        
        if idx1 < cards1.count && i == cards1[idx1] {
            idx1 += 1
        }else if idx2 < cards2.count && i == cards2[idx2] {
            idx2 += 1
        }else {
            answer = false
            break
        }
    }
    
    return answer ? "Yes" : "No"

}