
import Foundation


//백준 1110번
var inputNumber = Int(readLine()!)!
var checkFirstNumber = inputNumber
var answer = 0


while true {
    if inputNumber == 0{
        break
    }

//    if inputNumber < 10 {
//        inputNumber *= 10
//    }

    let leftNumber = String(inputNumber % 10)
    let rightNumber = String(String(inputNumber).map{Int(String($0))!}.reduce(0, +) % 10)
    let checkNumber = leftNumber + rightNumber
    if(Int(checkNumber)! == checkFirstNumber){
        break
    }else{
        inputNumber = Int(checkNumber)!
        answer += 1
    }
    
  
}
print(answer+1)

