import Foundation

//프로그래머스  https://school.programmers.co.kr/learn/courses/30/lessons/176962
func solution(_ plans:[[String]]) -> [String] {
    var stopList : [String] = []
    var stack : [[String]] = []
    var plansList : [[String]] = plans.sorted{ $0[1] < $1[1] }
    var answer : [String] = []
    
    func timeConverter(_ time : String) -> Int {
        var split = time.split(separator : ":")
        return Int(split[0])! * 60 + Int(split[1])!

    }

    
    for i in 0..<plansList.count-1 {

        stack.append( [ plansList[i][0] , plansList[i][2] ] )
        var gap = timeConverter(plansList[i+1][1]) - timeConverter(plansList[i][1])
        
        while stack.count > 0 && gap > 0 {
                if Int(stack.last![1])! <= gap {
                var stackOneLast = stack.removeLast()
                gap -= Int(stackOneLast[1])!
                answer.append(stackOneLast[0])
            }else{
                var stackTwoLast = stack.removeLast()
                stack.append([stackTwoLast[0] , String(Int(stackTwoLast[1])! - gap) ] )
                gap = 0
            }
            
        } 
    }
    answer.append(plansList.last![0])
    
    while stack.count > 0 {
        var stackLast = stack.removeLast()
        answer.append(stackLast[0])
        
    }
    

    


    
    return answer
}

