import Foundation


// 프로그래머스 카카오 이모티콘 할인행사 문제 https://school.programmers.co.kr/learn/courses/30/lessons/150368
func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    
    
    var discount : [Int] = [10,20,30,40]
    var totalArray : [Int] = []
    var answerArray : [Int] = [0,0]
    
    func dfs(_ myArray : [Int] ){
        var tempArray = myArray
        
        if myArray.count == emoticons.count {
            calculate(myArray)
            return
        }
        
        for dis in discount {
            dfs(myArray + [dis])
        }

    }
    
    func calculate(_ discountArray : [Int]){
        
        var emoticonsPlus = 0
        var totalPrice = 0
        
        for user in users {
            
            let minDiscount = user[0]
            let minPrice = user[1]
            var tempPrice = 0
            for (index, discount) in discountArray.enumerated() {
                if minDiscount <= discount {
                    tempPrice += emoticons[index] * (100-discount) / 100
                }
            }
            
            if tempPrice >= minPrice {
                emoticonsPlus += 1
            }else{
                totalPrice += tempPrice
            }
            
        }
        
        if answerArray[0] <= emoticonsPlus {
            if answerArray[0] == emoticonsPlus {
                if answerArray[1] < totalPrice {
                    answerArray[0] = emoticonsPlus
                    answerArray[1] = totalPrice
                }
            }else{
                    answerArray[0] = emoticonsPlus
                    answerArray[1] = totalPrice
            }
            
        }
    }
    
    dfs([])
    
    
    return answerArray
}