import Foundation

let inputArray = String(readLine()!)
var answer = 0
var myAscilValue = Int(exactly: Character("A").asciiValue!)!

for i in inputArray.map({String($0)}) {
    let ascilValue = Int(exactly: Character(i).asciiValue!)!
    answer += min(abs(ascilValue - myAscilValue),26 - abs(ascilValue - myAscilValue))
    myAscilValue = ascilValue
}

print(answer)