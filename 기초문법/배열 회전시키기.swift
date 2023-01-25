import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
    var answer = numbers
    if(direction == "right"){
        answer.insert(answer.removeLast(), at: 0)
    }else{
        answer.append(answer.removeFirst())
    }
    return answer
}