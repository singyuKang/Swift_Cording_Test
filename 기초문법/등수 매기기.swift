import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    
    let new_score = score.map(({$0[0] + $0[1]}))
    var one_array = Array(repeating: 1, count: new_score.count)
    
    // print(one_array)
    
    for i in 0...new_score.count-1{
        for k in 0...new_score.count-1{
            if(new_score[i] < new_score[k]){
                one_array[i] += 1
            }
        }
    }
    
    return one_array
}