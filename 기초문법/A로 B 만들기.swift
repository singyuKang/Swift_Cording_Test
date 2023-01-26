import Foundation

func solution(_ before:String, _ after:String) -> Int {
    let before_sorted = before.sorted()
    let after_sorted = after.sorted()
    if(before_sorted.count != after_sorted.count){
        return 0
    }else{
        for i in 0...before_sorted.count-1{
            if(Array(before_sorted)[i] != Array(after_sorted)[i]){
                return 0
            }
        }
        return 1
    }
    
}