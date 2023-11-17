import Foundation

//프로그래머스 덧칠하기 
//시간초과
func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var answer = 0
    var paintTrue : [Bool] = Array(repeating : true , count : n+1)
    
    for i in section {
        paintTrue[i] = false
    }
    
    while true {
        if let falseIndex = paintTrue.firstIndex(of : false) {
            let endIndex = falseIndex + m > n ? n : falseIndex + m-1
            for index in falseIndex..<endIndex+1{
                paintTrue[index] = true
            }
            
            answer += 1
        }else{
             break
        }
    }
    
    return answer
}

//풀이 2 일정범위 체크하면서 범위안에있으면 제거
func solution1(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var section = section
    var answer = 0 
    
    
    while !section.isEmpty {
        let firstSectionWall = section[0]
        
        for _ in 0..<m {
            guard let firstWall = section.first else { break }
            
            if firstWall < firstSectionWall + m {
                section.removeFirst()
            }else{
                break
            }
        }
    
        answer += 1

    }
    
    return answer
}