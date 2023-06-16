import Foundation

func solution(_ array:[Int]) -> Int {
    
    var count = 0
    
    for i in array{
        // print(String(i))
        for k in String(i){
            if(k == "7"){
                count += 1
            }
        }
    }
    return count
}