import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    var index = 0
    
    for i in 1...k-1{
        // print(i)
        index += 2
        index = index % (numbers.count)
    }
    
    
    return numbers[index]
}