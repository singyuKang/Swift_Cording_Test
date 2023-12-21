import Foundation

// 백준 1931번 https://www.acmicpc.net/problem/1931
let N = Int(readLine()!)!
var conferenceList : [[Int]] = []
var currentEndTime = 0
var answer = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    conferenceList.append(input)
}


conferenceList.sort {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    }else{
        return $0[1] < $1[1]
    }
}

for conference in conferenceList {
    if currentEndTime <= conference[0] {
        currentEndTime = conference[1]
        answer += 1
    }
}

print(answer)