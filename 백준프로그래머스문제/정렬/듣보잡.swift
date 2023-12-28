import Foundation

// 백준 1764번 https://www.acmicpc.net/problem/1764
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N , M) = (input[0], input[1])
var dic : [String : Int] = [:]
var answerList : [String] = []

for _ in 0..<N {
    let str = String(readLine()!)
    
    if let _ = dic[str] {
        dic[str]! += 1
    }else{
        dic[str] = 1
    }
}


for _ in 0..<M {
    let str2 = String(readLine()!)
    
    if let _ = dic[str2] {
        answerList.append(str2)
    }
}

answerList.sort()
print(answerList.count)
for str in answerList {
    print(str)
}
