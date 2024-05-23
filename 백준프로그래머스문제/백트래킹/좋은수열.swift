import Foundation

////백준 2661번  https://www.acmicpc.net/problem/2661
var arr : [Int] = [1,2,3]
var N = Int(readLine()!)!

func isGoodArr(_ arr : [Int]) -> Bool {
    if arr.count < 4 {
        return true
    }
    
    for windowSize in 2...arr.count / 2 {
        var left = 0
        var right = left + windowSize
        var count = 0
        
        while right != arr.count {
            if arr[left] == arr[right] {
                count += 1
                if count == windowSize {
                    return false
                }
                left += 1
                right += 1
            }else{
                count = 0
                left += 1
                right += 1
            }
        }
        
    }

    return true
}

func dfs(_ value : [Int] ) {
//    if value check만족 못하면 stop
    guard isGoodArr(value) else {
        return
    }

    if value.count == N {
        print(value.map{String($0)}.joined(separator: ""))
        exit(0)
    }

    for i in 0..<arr.count {

//        value + [arr[i]] 에 대한 판단
        if value.count == 0 {
            dfs(value + [arr[i]])
        }else{
            if value.last! != arr[i] {
                dfs(value + [arr[i]])
            }
        }

    }


}

dfs([])
