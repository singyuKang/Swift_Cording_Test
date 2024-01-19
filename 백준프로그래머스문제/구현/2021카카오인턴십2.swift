import Foundation


// https://school.programmers.co.kr/learn/courses/30/lessons/81302
// 모든 경우의수 탐색 x좌표 y좌표 다른경우에서 헤맴 -> x좌표 잡고 2번째 y로 바꿔주면 매우쉽게 변환 가능


func solution(_ places:[[String]]) -> [Int] {

    
    var answer : [Int] = []
    
    
    for place in places {
        var map : [[String]] = []
        var problemIndex : [[Int]] = []
        var rightAnswer : Bool = true
        for str in place {
            let mapStr = str.map { String($0) }
            map.append(mapStr)
        }
        
        for i in 0..<5 {
            for k in 0..<5 {
                if map[i][k] == "P" {
                    problemIndex.append([i,k])
                }
            }
        }

        for a in 0..<problemIndex.count {
            for b in a..<problemIndex.count {
                if a==b {
                    continue
                }
 
                let firstProblem = problemIndex[a]
                let secondProblem = problemIndex[b]
                let length = abs(firstProblem[0]-secondProblem[0]) + abs(firstProblem[1]-secondProblem[1])
                
                //2이상 패스
                if length > 2 {
                    continue
                }else{
  
                    if length == 1 {
                        //1일 경우 무조건 안됨
                       rightAnswer = false
                       break
                    }else{
                        //2일 경우
                        //x 좌표 동일
                        if firstProblem[0] == secondProblem[0] {
                            if map[firstProblem[0]][(firstProblem[1] + secondProblem[1])/2] == "X" {
                                continue
                            }else{
                                 rightAnswer = false
                                 break
                            }
                        }
                        //y 좌표 동일
                        else if firstProblem[1] == secondProblem[1] {
                            if map[(firstProblem[0] + secondProblem[0])/2][firstProblem[1]] == "X" {
                                continue
                            }else{
                                 rightAnswer = false
                                 break
                            }
                        }
                        //x좌표 y좌표 모두 다름
                        else{
                            if map[firstProblem[0]][secondProblem[1]] == "O" || map[secondProblem[0]][firstProblem[1]] == "O" {
                                 rightAnswer = false
                                 break
                            }                 
                        }
      
                    }

                }
                  
            }        
        }
    
        if rightAnswer {
            answer.append(1)
        }else{
            answer.append(0)
        }
        
        
        
        
     
    }
    
    

    
    return answer
}