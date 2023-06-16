import Foundation


//테스트케이스 오류
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var dic:[Int : Int] = [:]
    var answer = 0
    for i in 1...n {
        dic[i] = 1
    }
    
    lost.forEach{
        dic[$0]! -= 1
    }
    
    reserve.forEach{
        dic[$0]! += 1
    }
    for (key, values) in dic {
        if(values == 2){
            if dic[key+1] != nil {
                // dic[key+1] += 1
                if(dic[key+1] == 0){
                    dic[key+1] = 1
                }
            }else if dic[key-1] != nil{
                if(dic[key-1] == 0){
                    dic[key-1] = 1
                }
            }else{
                
            }
            
        }
    }
    dic.values.forEach{
        if($0 > 0){
            answer += 1
        }
    }
    return answer
}


//참고
func solution1(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {


    var students = [Int](repeating: 1, count: n)
    

    for l in lost {
        students[l-1] = 0
    }

    for r in reserve {
        students[r-1] += 1
    }
    
    var count = 0
    for i in 0..<n {
        if students[i] == 0 {
            if i>0 && students[i-1] > 1 {
                // 앞번호 학생에게 빌린다.
                students[i] = 1
                students[i-1] = 1
            } else if i<n-1 && students[i+1] > 1 {
                // 뒷번호 학생에게 빌린다.
                students[i] = 1
                students[i+1] = 1
            } else {
                // 빌리지 못했다.
                count += 1
            }
        }
    }
    
    return n - count
}