
import Foundation

//백준 2018번 https://www.acmicpc.net/problem/2018
var N = Int(readLine()!)!
var arr : [Int] = Array(1...N)

var left = 0
var right = 0
var sum = arr[0]
var answer = 0


while left < arr.count , right < arr.count {

    if sum < N {
        right += 1
        if right < arr.count {
            sum += arr[right]
        }
    }else{
        
        if sum == N {
            answer += 1
        }
        sum -= arr[left]
        left += 1
    }
    
}

print(answer)