import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    let max = array.max()!
    let index = array.firstIndex(of: array.max()!)!
    return [max, index]
}