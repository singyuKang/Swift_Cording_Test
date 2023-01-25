import Foundation

func solution(_ order:Int) -> Int {
    var count = 0
    
    for i in String(order){
        if(Int(String(i))! != 0 && Int(String(i))! % 3 == 0){
            count += 1
        }
    }
    return count
}