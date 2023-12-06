import Foundation

func solution(_ n:Int) -> Int {
    //6조각 몇판    최소몇판
    
    var result = 6
    
    while true {
         if(result % n == 0){
             break
         }else{
             result += 6
         }
        
    }
    return result / 6
}