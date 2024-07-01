import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/43238
func solution(_ n:Int, _ times:[Int]) -> Int64 {
    
    
    var n = n
    var times : [Int] = times.sorted()
    var start = 1
    var end = times[times.count-1] * n 
    var result = 0
    
    while start <= end {
        
        let mid = (start + end) / 2
        var maxPeople = 0
        
        for i in 0..<times.count {
            maxPeople += mid / times[i]  
        }
        
        if maxPeople < n {
            start = mid + 1
        }else {
            end = mid - 1
            result = mid
        }
         
    }
    
    // print(result)

    
    return Int64(result)
}

//백준 3079번 https://www.acmicpc.net/problem/3079
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,M) = (input[0] , input[1])
var timeArr : [Int] = []
for _ in 0..<N {
    let value = Int(readLine()!)!
    timeArr.append(value)
}
timeArr.sort {
    $0 < $1
}

var answer = 0
var start = 1
var end = timeArr[timeArr.count-1] * M

while start <= end {
    let mid = (start + end) / 2
    var people = 0
    for i in 0..<timeArr.count {
        people += mid / timeArr[i]
    }

    if M > people {
        start = mid + 1
    }else{
        answer = mid
        end = mid - 1
    }

}

print(answer)
