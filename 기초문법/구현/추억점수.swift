import Foundation

//프로그래머스 추억 점수
func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var answer : [Int] = []
    
    for i in photo {
        var number = 0
        for (index , values) in i.enumerated() {
            if(name.contains(values)){
                for(index, myname) in name.enumerated(){
                    if(values == myname){
                        number += yearning[index]
                    }
                }
            }
        }
        answer.append(number)
    }
    
    
    return answer
}