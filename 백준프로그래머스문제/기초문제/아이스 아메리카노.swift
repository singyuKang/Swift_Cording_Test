import Foundation

func solution(_ money:Int) -> [Int] {
    //1잔 5500원
    var answer:[Int] = []
    

    answer.append(money/5500)
    answer.append(money%5500)
    
    
    return answer
}