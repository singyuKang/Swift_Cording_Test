import Foundation


//백준 11047번

let inputArray = readLine()!.split(separator: " ").map{Int(String($0))!}
var (inputNumber, money) = (inputArray[0], inputArray[1])
var moneyArray : [Int] = []
var answer = 0

for _ in 0..<inputNumber {
    moneyArray.append(Int(readLine()!)!)
}

moneyArray.sort(by: >)

for i in moneyArray {
    if(money / i > 0){
        let q = money / i
        let r = money % i
        answer += q
        money = r
    }
}

print(answer)
