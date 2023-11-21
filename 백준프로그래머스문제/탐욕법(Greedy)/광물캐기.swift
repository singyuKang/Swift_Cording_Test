import Foundation

//첫번째 풀이 너무 비효율 더럽게 짬
func solution(_ picks:[Int], _ minerals:[String]) -> Int {
    
    //다이아  철 돌
    var fatigueValue = 0
    var fatigueArray : [[Int]] = [[1,1,1],[5,1,1],[25,5,1]]
    var picksArray = picks.map{ $0 * 5 }

    
    for mineral in minerals {
        if(picksArray[0] == 0 && picksArray[1] == 0 && picksArray[2] == 0){
            break
        }
        if picksArray[0] > 0 {
            //다이아 곡괭이
            if mineral == "diamond"{
                fatigueValue += fatigueArray[0][0]
                picksArray[0] -= 1
            }else if mineral == "iron"{
                fatigueValue += fatigueArray[0][1]
                picksArray[0] -= 1
            }else if mineral == "stone"{
                fatigueValue += fatigueArray[0][2]
                picksArray[0] -= 1
            }
            
        }else if(picksArray[0] == 0 && picksArray[1] > 0) {
            //다이아 다사용 철
            if mineral == "diamond"{
                fatigueValue += fatigueArray[1][0]
                 picksArray[1] -= 1
            }else if mineral == "iron"{
                fatigueValue += fatigueArray[1][1]
                picksArray[1] -= 1
            }else if mineral == "stone"{
                fatigueValue += fatigueArray[1][2]
                picksArray[1] -= 1
            }
            
            
        }else if(picksArray[0] == 0 && picksArray[1] == 0 && picksArray[2] > 0){
            //다이아 철 다사용 돌
               if mineral == "diamond"{
                fatigueValue += fatigueArray[2][0]
                picksArray[2] -= 1
            }else if mineral == "iron"{
                fatigueValue += fatigueArray[2][1]
                    picksArray[2] -= 1
            }else if mineral == "stone"{
                fatigueValue += fatigueArray[2][2]
                    picksArray[2] -= 1
            }
               
        }
        
        
    }
    

    return fatigueValue
}

//다이아 금속 철 돌 순서로 많은거 부터 곡괭이 소모
func solution1(_ picks:[Int], _ minerals:[String]) -> Int {
    var picks: [Int] = picks
    var answer: Int = 0
    
    var count = 0
    
    if picks.reduce(0){ $0 + $1 } * 5 > minerals.count {
        count = minerals.count
    } else {
        count = picks.reduce(0){ $0 + $1 } * 5
    }
    
    var array = Array(repeating : [0,0,0] , count : 10) 
    
    for mineralIndex in 0..<count{
        if minerals[mineralIndex] == "diamond"{
            array[mineralIndex / 5][0] += 1
        }
        if minerals[mineralIndex] == "iron"{
            array[mineralIndex / 5][1] += 1
        }
        if minerals[mineralIndex] == "stone"{
            array[mineralIndex / 5][2] += 1
        }
    }

    array.sort{
        if $0[0] == $1[0] {
            if $0[1] == $1[1] {
                return $0[2] > $1[2]
            }else{
                return $0[1] > $1[1]
            }
        }else{
            return $0[0] > $1[0]
        }
    }
    
    for mineralValue in array {
        let (d,i,s) = (mineralValue[0], mineralValue[1], mineralValue[2])
        
        if picks[0] > 0 {
            answer += d + i + s
            picks[0] -= 1
        }else if picks[1] > 0 {
            answer += d * 5 + i + s
            picks[1] -= 1
        }else if picks[2] > 0 {
            answer += d * 25 + i * 5 + s
            picks[2] -= 1
        }
        
    }
    
    
    return answer
}