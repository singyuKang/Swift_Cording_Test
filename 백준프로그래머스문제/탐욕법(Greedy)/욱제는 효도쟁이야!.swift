import Foundation


//백준 14487
let inputNumber = Int(readLine()!)!
let inputArray = readLine()!.split(separator : " ").map{Int(String($0))!}.sorted(by : <)

var answer = 0

for (index, value) in inputArray.enumerated() {
    if(index == inputNumber - 1){
        break
    }
    answer += value
}
