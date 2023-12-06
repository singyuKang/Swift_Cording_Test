import Foundation

func solution(_ numbers:[Int]) -> Int {
    var number_sort = numbers.sorted()
//     print(number_sort[number_sort.count-1] * number_sort[number_sort.count-2])
    
    return number_sort[number_sort.count-1] * number_sort[number_sort.count-2]
}