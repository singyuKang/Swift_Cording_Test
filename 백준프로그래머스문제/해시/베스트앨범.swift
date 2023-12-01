import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    // ["classic", "pop", "classic", "classic", "pop"]	
    // [500, 600, 150, 800, 2500]
    // [4, 1, 3, 0]
    var answer : [Int] = []
    var dict : [String : [[Int]]] = [:]
    
    for idx in 0..<genres.count {
        if let _ = dict[genres[idx]] {
              dict[genres[idx]]?.append([idx, plays[idx]])
        }else{
            dict[genres[idx]] = [[idx, plays[idx]]]
        }     
    }

    let sortedDict = dict.sorted {
        $0.value.map{$0[1]}.reduce(0,+) > $1.value.map{$0[1]}.reduce(0,+)
    }
 
    // 속한 노래가 많이 재생된 장르를 먼저 수록
    // 장르 내에서 많이 재생된 노래를 먼저 수록
    // 장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록
    
    for idx in 0..<sortedDict.count {
        let value = sortedDict[idx].value.sorted {
            return $0[1] == $1[1] ? false : $0[1] > $1[1]
        }
        
        for idx in 0..<value.count{ 
            if idx > 1{
                break
            }
            answer.append(value[idx][0])
        }
        
    }
    
    
    return answer
}