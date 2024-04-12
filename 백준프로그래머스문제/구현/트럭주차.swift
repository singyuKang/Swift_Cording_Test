import Foundation

//백준 2979번 https://www.acmicpc.net/problem/2979

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (A,B,C) = (input[0], input[1], input[2])
var OneSection = readLine()!.split(separator: " ").map { Int(String($0))! }
var TwoSection = readLine()!.split(separator: " ").map { Int(String($0))! }
var ThreeSection = readLine()!.split(separator: " ").map { Int(String($0))! }

var timeSecond = 1
var answer = 0

while timeSecond < 101 {
    var truckCount = 0
    
    if OneSection[0] <= timeSecond && timeSecond < OneSection[1] {
        truckCount += 1
    }
    
    if TwoSection[0] <= timeSecond && timeSecond < TwoSection[1] {
        truckCount += 1
    }
    
    if ThreeSection[0] <= timeSecond && timeSecond < ThreeSection[1] {
        truckCount += 1
    }
    
    
    if truckCount == 1 {
        answer += A * truckCount
    }
    
    if truckCount == 2 {
        answer += B * truckCount
    }
    
    if truckCount == 3 {
        answer += C * truckCount
    }
    
    timeSecond += 1

}

print(answer)

func refactoringAnswer() {

//백준 2979번 https://www.acmicpc.net/problem/2979

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (A,B,C) = (input[0], input[1], input[2])
var timeSecond = 1
var answer = 0

var arr : [Int] = Array(repeating: 0, count: 101)

for _ in 0..<3 {
    let timeSection = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for timeSec in timeSection[0]..<timeSection[1] {
        arr[timeSec] += 1
    }
}

arr.forEach{
    switch $0 {
    case 1 : answer += A
    case 2 : answer += B * 2
    case 3 : answer += C * 3
    default: do {
        
        }
    }
}
print(answer)


}