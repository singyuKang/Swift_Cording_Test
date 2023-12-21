import Foundation

//백준 10610 번 https://www.acmicpc.net/problem/10610
let input = readLine()!.map{ String($0) }
var sum = 0

if !input.contains("0"){
    print(-1)
}else{
    sum = input.map{Int(String($0))!}.reduce(0,+)
    
    if sum%3 == 0 {
        print(input.sorted(by: >).joined())
    }else{
        print(-1)
    }

}

