import Foundation

//백준 2003번 https://www.acmicpc.net/problem/2003
var split = readLine()!.split(separator: " ").map{ Int(String($0))! }
var (N,M) = (split[0], split[1])
var inputArray = readLine()!.split(separator: " ").map { Int(String($0))! }
var startIndex = 0
var endIndex = 0
var sum = inputArray[0]


var answer = 0

while startIndex < inputArray.count || endIndex < inputArray.count {
    
    if sum == M {
        answer += 1
    }
    
    if sum < M {
        endIndex += 1
        if endIndex == inputArray.count {
            break
        }
        sum += inputArray[endIndex]
    }else {
        if startIndex == inputArray.count {
            break
        }
        sum -= inputArray[startIndex]
        startIndex += 1
    }

    
     
}

print(answer)

//4 2
//1 1 1 1

func sol2() {

    //백준 1197번 https://www.acmicpc.net/problem/1197

    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var target = input[1]
    var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

    var startIdx = 0
    var endIdx = 0
    var answer = 0
    var sum = arr[0]

    while startIdx < arr.count && endIdx < arr.count {

        
        if sum == target {
            endIdx += 1
            answer += 1
            if endIdx < arr.count {
                sum += arr[endIdx]
            }
        }else if sum > target {
            sum -= arr[startIdx]
            startIdx += 1
        }else{
            endIdx += 1
            if endIdx < arr.count {
                sum += arr[endIdx]
            }
        }
    
    }

    print(answer)
}