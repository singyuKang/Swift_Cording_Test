import Foundation

// 백준 2156번 https://www.acmicpc.net/problem/2156
var inputNumber = Int(readLine()!)!
var dp : [Int] = Array(repeating: 0, count: 10001)
var arr : [Int] = [0]


for _ in 1..<inputNumber+1 {
    let input = Int(readLine()!)!
    arr.append(input)
}

if inputNumber == 1 {
    print(arr[1])
}else if inputNumber == 2 {
    print(arr[1] + arr[2])
}else if inputNumber == 3 {
    print(max(arr[1] + arr[2] , arr[2] + arr[3], arr[1] + arr[3]))
}
else{
    dp[1] = arr[1]
    dp[2] = arr[1] + arr[2]
    dp[3] = max(arr[1] + arr[2] , arr[2] + arr[3], arr[1] + arr[3])
    
    for idx in 4...inputNumber {
        dp[idx] = max(arr[idx] + arr[idx-1] + dp[idx-3] , arr[idx] + dp[idx-2], dp[idx-1])
    }
    print(dp[inputNumber])
}


