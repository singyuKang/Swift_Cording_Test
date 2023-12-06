import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    array.forEach{
        if($0 == n){
            count+=1
        }
    }
    
    
    return count
}