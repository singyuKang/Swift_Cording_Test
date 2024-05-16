import Foundation

////백준 2294번 https://www.acmicpc.net/problem/2294
var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var (arrCount, target) = (input[0], input[1])
var arr: [Int] = []
var dp : [Int] = Array(repeating: 0, count: 100001)
var answer = 0

for _ in 0..<arrCount {
    let input = Int(readLine()!)!
    if arr.contains(input){
        continue
    }else{
        arr.append(input)
    }
}

// first Setting
for coin in arr {
    dp[coin] = 1
}

for coin in arr {
    if target >= coin+1 {
        for i in coin+1...target {
            
            if i-coin < 0 || i-coin >= dp.count {
                continue
            }
            
            if arr.contains(i){
                continue
            }
            
            if dp[i] == 0 && dp[i-coin] == 0 {
                continue
            }
            
            if dp[i] == 0 && dp[i-coin] != 0 {
                dp[i] = dp[i-coin] + 1
            }else if dp[i] != 0 && dp[i-coin] != 0 {
                dp[i] = min(dp[i], dp[i-coin]+1)
            }
            
        }
    }
}

if dp[target] == 0 {
    print(-1)
}else{
    print(dp[target])
}

func refatoringAnswer() {
    ////백준 2294번 https://www.acmicpc.net/problem/2294
    var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var (arrCount, target) = (input[0], input[1])
    var arr: [Int] = []
    var dp : [Int] = Array(repeating: 1000001, count: 100001)
    var answer = 0

    for _ in 0..<arrCount {
        let input = Int(readLine()!)!
        if arr.contains(input){
            continue
        }else{
            arr.append(input)
        }
    }

    dp[0] = 0

    for coin in arr {
        if target >= coin {
            for i in coin...target {
                
                dp[i] = min(dp[i], dp[i-coin]+1)
                
            }
        }
    }


    if dp[target] == 1000001 {
        print(-1)
    }else{
        print(dp[target])
    }


}