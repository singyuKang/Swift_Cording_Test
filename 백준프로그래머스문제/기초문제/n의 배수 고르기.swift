import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    
    let my_list = numlist.filter({$0%n == 0})
    
    
    return my_list
}