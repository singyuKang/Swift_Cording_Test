import Foundation

//백준 14889번 https://www.acmicpc.net/problem/14889

var N = Int(readLine()!)!
var map : [[Int]] = Array(repeating: [], count: N)
var answer : Int = Int.max


func permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    var visited = Array(repeating: false, count: array.count)
    
    func cycle(_ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        
        for i in 0..<array.count {
            if visited[i] {
                continue
            } else {
                visited[i] = true
                cycle(now + [array[i]])
                visited[i] = false
            }
        }
    }
    
    cycle([])
    
    return result
}

for i in 0..<N {
    map[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}


func dfs(_ depth : Int, _ startTeamArr : [Int], _ startIdx : Int) {
    
    if depth == N/2 {
        var startPower = 0
        var linkPower = 0
        
        var linkTeamArr : [Int] = Array(0..<N)
        
        for startTeamIdx in startTeamArr {
            linkTeamArr.remove(at: linkTeamArr.firstIndex(of: startTeamIdx)!)
        }
        
        for i in 0..<N {
            for j in i..<N {
                if startTeamArr.contains(i) && startTeamArr.contains(j) {
                    startPower += map[i][j] + map[j][i]
                }
                else if linkTeamArr.contains(i) && linkTeamArr.contains(j) {
                    linkPower += map[i][j] + map[j][i]
                }
                 
            }
        }
        
        
        if answer > abs(startPower-linkPower){
            answer = abs(startPower-linkPower)
        }
        
        
        
        
        return
    }
//    print(startTeamArr)
    
    for idx in startIdx..<N {
        
        dfs(depth + 1 , startTeamArr + [idx] , idx + 1)
        
    }
    
    
}

dfs(0,[],0)

print(answer)
