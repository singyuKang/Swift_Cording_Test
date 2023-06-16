import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
      
    //  count 개
    let count = num_list.count / n
    var answer: [[Int]] = []
    var temp_list: [Int] = []
    
    for i in num_list{
        temp_list.append(i)
        if(temp_list.count == n){
            answer.append(temp_list)
            temp_list = []
        }
        
    }
    return answer
}