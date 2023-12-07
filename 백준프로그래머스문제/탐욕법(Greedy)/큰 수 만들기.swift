import Foundation

func solution(_ number:String, _ k:Int) -> String {
    
    var numberArray = number.map{Int(String($0))!}
    var stack : [Int] = []
    var count = 0//지운 횟수
    var answer = ""
    
    for i in 0..<numberArray.count {
        
        while stack.count > 0 && stack.last! < numberArray[i] && count < k {
            stack.removeLast()
            count += 1
            if count == k {
                break
            }
        }
        stack.append(numberArray[i])
    }
    
    //testCase 12 
    //지운횟수가 0회인경우 k번 제거
    if count == 0 {
        for i in 1...k {
            stack.removeLast()
        }
    } 
    
    for k in stack {
        answer += String(k)
    }

    return answer
}