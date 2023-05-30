import Foundation



let inputNumber = Int(readLine()!)!
let inputArray = readLine()!.split(separator : " ").map{Int(String($0))!}
var killArray : [Int] = []

for i in 0..<inputNumber {
    let indexValue = inputArray[i]
    var kill = 0
    
    if i == inputNumber - 1 {
        killArray.append(0)
        break
    }else{
        for j in i+1..<inputNumber{
            if inputArray[j] > indexValue {
                break
            }
            kill += 1
        }
        killArray.append(kill)
    }
    
}
//최대 계산
print(killArray.max()!)
