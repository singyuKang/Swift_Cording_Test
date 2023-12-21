import Foundation

// https://www.acmicpc.net/problem/16953 백준 16953번
let split = readLine()!.split(separator: " ").map{Int(String($0))!}
let (A,B) = (split[0], split[1])

var answerList : [Int] = []

func dfs(_ depth : Int,_ myValue : Int) {
        
    if myValue > B {
        return
    }
    
    if myValue == B {
        answerList.append(depth)
    }
    
    dfs(depth+1 , myValue * 2)
    dfs(depth+1 , Int(String(myValue) + String(1))!)
    
    
}

dfs(0,A)

if answerList.count == 0 {
    print(-1)
}else{
    print(answerList.min()! + 1)
}

