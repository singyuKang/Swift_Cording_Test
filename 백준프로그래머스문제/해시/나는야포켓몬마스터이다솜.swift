import Foundation


//백준 1620번  https://www.acmicpc.net/problem/1620


var split = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (split[0], split[1])
var dicString : [String : Int] = [:]
var dicNumber : [Int : String] = [:]

for pocketNumber in 1..<N+1 {
    let pocketMon = String(readLine()!)
    
    if let _ = dicString[pocketMon] {
        dicString[pocketMon] = pocketNumber
        dicNumber[pocketNumber] = pocketMon
    }else{
        dicString[pocketMon] = pocketNumber
        dicNumber[pocketNumber] = pocketMon
    }

    
}

for _ in 0..<M {
    
    let question = readLine()!
    if let converNum = Int(question) {
        print(dicNumber[converNum]!)
    }else{
        print(dicString[String(question)]!)
    }
}
