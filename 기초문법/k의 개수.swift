import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var answer = 0
    
    // i 부터 j 까지 k 가 몇번등장
    
    for number in i...j{
        // print(number)
        let my_string = String(number)
        for data in my_string{
            if(String(data) == String(k)){
                answer += 1
            }
            
        }
    }
    
    
    return answer
}