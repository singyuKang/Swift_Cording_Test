import Foundation

// 백준 https://www.acmicpc.net/problem/1475
var inputNumber = readLine()!.map{Int(String($0))!}

var numberArray = Array(repeating: 0, count: 10)

for k in inputNumber {
    numberArray[k] += 1
}
var sixPlusNine = numberArray[6] + numberArray[9]


if (sixPlusNine) % 2 == 0 {
    numberArray[6] = sixPlusNine / 2
    numberArray[9] = sixPlusNine / 2
}else{
    numberArray[6] = sixPlusNine / 2 + 1
    numberArray[9] = sixPlusNine / 2 + 1
}

print(numberArray.max()!)

