import Foundation

func solution(_ array:[Int]) -> Int {
    let array_sorted = array.sorted()
    let index = Int(floor(Double(array_sorted.count) / 2))
    
    return array_sorted[index]
}