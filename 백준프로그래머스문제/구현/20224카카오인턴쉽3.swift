import Foundation

// 완전탐색 시간오류 https://school.programmers.co.kr/learn/courses/30/lessons/258709
func solution(_ dice:[[Int]]) -> [Int] {
    
    let count = dice.count
    let combinationResults = combination(Array(0..<count) , count/2)
    var answer : [Int] = []
    var maxWin = 0
    print(combinationResults)
    
    
    func getSumArr(_ dice : [[Int]]) -> [Int] {
        
        var result : [Int] = []
        
        func dfs(_ index : Int, _ myValue : Int) {

            if index ==  dice.count {
                result.append(myValue)
                return
            }
            
            for i in 0..<6 {
                dfs(index+1, myValue + dice[index][i])
            }
        }
        
        dfs(0,0)
        
        return result

    }
    

    
    for diceA in combinationResults {
        
        var winCount = 0

        
        
        let diceB = Array(0..<count).filter {
            !diceA.contains($0)
        }
        
        let diceASumArr = getSumArr(diceA.map { dice[$0] })
        let diceBSumArr =  getSumArr(diceB.map { dice[$0] })
        print(diceASumArr)
        print(diceBSumArr)
        
        for i in 0..<diceASumArr.count {
            for k in 0..<diceBSumArr.count {
                let diceAValue = diceASumArr[i]
                let diceBValue = diceBSumArr[k]
                
                if diceAValue > diceBValue {
                    winCount += 1
                }
                
            }
        }
        // print(winCount)
        
        if winCount > maxWin {
            maxWin = winCount
            answer = diceA
        }
        

    }
    
    
      
    return answer.map { $0 + 1}
}

fileprivate func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }
    
    var stack = array.enumerated().map { ([$0.element], $0.offset) }
    
    while stack.count > 0 {
        let now = stack.removeLast()
        
        let elements = now.0
        let index = now.1
        
        if elements.count == n {
            result.append(elements.sorted())
            continue
        }
        
        guard index+1 <= array.count-1 else { continue }
        
        for i in index+1...array.count-1 {
            stack.append((elements + [array[i]], i))
        }
    }
    
    return result
}