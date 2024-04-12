import Foundation

//백준 6603번 https://www.acmicpc.net/problem/6603
while true {
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input.count == 1 && input[0] == 0 {
        break
    }
    
    var k = input[0]
    var arr : [Int] = []
    for i in 1..<k+1 {
        arr.append(input[i])
    }

    
    func dfs(_ depth : Int, _ currentArr : [Int], _ idx : Int) {
    
        
        if depth == 6 {
            print(currentArr.map{String($0)}.joined(separator: " "))
            
            return
        }

        for i in idx..<arr.count {
            dfs(depth + 1 , currentArr + [arr[i]] , i+1)
        }
        
        -

    }
    
    dfs(0, [], 0)
    print()
    
    
    
    
    
}

