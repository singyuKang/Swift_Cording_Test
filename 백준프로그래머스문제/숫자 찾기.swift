import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    for (index,i) in String(num).enumerated(){
        if( String(i) == String(k)){
            return index+1
        }
        
    }
    
    return -1
}