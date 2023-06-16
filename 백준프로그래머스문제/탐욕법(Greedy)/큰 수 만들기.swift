import Foundation

//완전탐색은 시간초과
func solution(_ number:String, _ k:Int) -> String {
    
    
    let numberArray = Array(number).map({Int(String($0))!})
    var stack : [Int] = []
    var cnt = 0
    
    
    for i in 0..<numberArray.count {
        //새로 들어온 수보다 작은 수를 지움
        
        while stack.count > 0 && stack.last! < numberArray[i] && cnt < k{
            stack.removeLast()
            cnt += 1 // 지운 횟수 체크
            
            if cnt == k{
                break
            }
        }
        
        stack.append(numberArray[i])
    }
    if cnt == 0 {
        for i in 1...k{
            stack.removeLast()
        }
    }
    
    
    return stack.reduce(""){$0 + "\($1)"}
}