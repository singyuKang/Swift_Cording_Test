import Foundation


// 백준 1439번 https://www.acmicpc.net/problem/1439
let input = readLine()!.map{Int(String($0))!}

let oneCount = input.split(separator: 0).count
let twoCount = input.split(separator: 1).count

if oneCount > twoCount {
    print(twoCount)
}else{
    print(oneCount)
}
