import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/258711
func solution(_ edges:[[Int]]) -> [Int] {
    
    
    var answer = [0,0,0,0]
    var outMap : [Int : [Int]] = [:]
    var inMap : [Int : Int] = [:]
    
    
    for i in edges {
        let (start , end) = (i[0], i[1])
        if let value = outMap[start] {
            outMap[start]!.append(end)
        }else{
            outMap[start] = [end]
        }
        
        if let _ = outMap[end] {
            
            
        }else{
            outMap[end] = []
        }
         
        
        if let value = inMap[end] {
            inMap[end]! += 1
        }else{
            inMap[end] = 1
        }
        
        if let value = inMap[start] {
            
            
        }else{
            inMap[start] = 0
        }
        

    }
    
    // print(outMap)
    // print(inMap)
    
//     생성 정점 
    
//     막대 그래프 갯수
    
//     8자 그래프 갯수
    
//     도넛그래프
    
    for (key, value) in inMap {
        // print(key , value)
        if value == 0 && outMap[key]!.count >= 2 {
            answer[0] = key
        }else if value  > 0 && outMap[key]!.count == 0 {
            answer[2] += 1
        }else if value >= 2 && outMap[key]!.count >= 2 {
            answer[3] += 1
        }
    }
    
    answer[1] = outMap[answer[0]]!.count - answer[2] - answer[3]
    // print(answer)
    
    
    
    
    
    
    
    return answer
}

//  완전탐색 -> 이분탐색으로 변형
func solution2(_ dice:[[Int]]) -> [Int] {
    
    let count = dice.count
    let combinationResults = combination(Array(0..<count) , count/2)
    var answer : [Int] = []
    var maxWin = 0
    // print(combinationResults)
    
    
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
        let diceBSumArr =  getSumArr(diceB.map { dice[$0] }).sorted()
        
        for number in diceASumArr {
            print(number)
            print(diceBSumArr)
            
            var left = 0
            var right = diceBSumArr.count-1
            
            while left < right {
                let mid = (left + right) / 2
                
                let midBValue = diceBSumArr[mid]
                
                if number > midBValue {
                    left = mid+1
                }else {
                    right = mid-1
                }
                       
            }
            print(left)
            winCount += left
            
        }
        
        print("winCount :", winCount)
        
        
        if winCount > maxWin {
            maxWin = winCount
            answer = diceA
        }
        
        

    }
    
    
      
    return answer.map { $0 + 1 }
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
