
import Foundation



var inputString = readLine()!
var minusSplit = inputString.split(separator: "-").map {String($0)}
var firstSplit = minusSplit[0].split(separator: "+").map {Int(String($0))!}
var first = 0
var temp = 0

for i in firstSplit {
    first += i
}

for i in 1..<minusSplit.count {
    let plusSplit = minusSplit[i].split(separator: "+").map({Int(String($0))!})
    for j in plusSplit {
        temp += j
    }
}

print(first-temp)

