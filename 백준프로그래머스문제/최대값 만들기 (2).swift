import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    let sort_list = numbers.sorted()

    
    return sort_list[0] * sort_list[1] > sort_list[sort_list.count-1] * sort_list[sort_list.count-2] ? sort_list[0] * sort_list[1] : sort_list[sort_list.count-1] * sort_list[sort_list.count-2] 
    
}