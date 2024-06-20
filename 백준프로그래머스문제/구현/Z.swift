import Foundation
////백준 1074번  https://www.acmicpc.net/problem/1074

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N,r,c) = (input[0], input[1], input[2])
var arr : [[Int]] = [[0,1], [2,3]]


func dfs(n : Int, r : Int, c : Int , count : Double) {
    
    if n == 1 {
        print(arr[r][c] + Int(count))
        return
    }
    
    let half = Int(pow(2.0, Double(n)) / 2)
    
    if r < half && c < half  {
//        1사분면
        dfs(n: n-1, r: r, c: c, count: count)
    }else if r < half && c >= half {
//        2사분면
        dfs(n: n-1, r: r, c: c-half, count: count + pow(Double(half), 2.0))
    }else if r >= half && c < half {
//        3사분면
        dfs(n: n-1, r: r-half, c: c, count: count + pow(Double(half), 2.0) * 2)
    }else{
//        4사분면
        dfs(n: n-1, r: r-half, c: c-half, count: count + pow(Double(half), 2.0) * 3)
        
    }
    
}

dfs(n: N, r: r, c: c, count: 0)
