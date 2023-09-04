import Foundation

//[백준] 2851번 슈퍼 마리오
var inputList : [Int] = []
var answer = 0

for _ in 0...9 {
    inputList.append(Int(String(readLine()!))!)
}

for i in inputList {
    
    answer += i
    if answer == 100 {
        break
    }
    if answer > 100 {
        if answer - 100 > 100 - (answer - i) {
            answer -= i
            break
        }else{
            break
        }
    }
     
    
}
print(answer)