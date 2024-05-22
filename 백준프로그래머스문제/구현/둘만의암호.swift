import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/155652
func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    var alphaArray = ["a", "b", "c", "d", "e", "f", "g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var answer : String = "" 
    
    for i in s {
        let str = String(i)
        var idx = alphaArray.firstIndex(of : str)!    
        var hitCount = 0
    
        while hitCount != index {
            idx = (idx + 1) % 26
            if skip.contains(alphaArray[idx]) {
                continue
            }else{
                hitCount += 1
            }
        }
        
        answer += alphaArray[idx]
        
        
        
    }
    

    return answer
}