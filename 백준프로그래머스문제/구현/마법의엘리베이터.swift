import Foundation

//프로그래머스  https://school.programmers.co.kr/learn/courses/30/lessons/148653

func solution(_ storey:Int) -> Int {
    
    var number = storey
    var answer = 0
    
    
    while number != 0 {
        
        let lastNum = number % 10 
        let nextNum = (number / 10) % 10 
        
        
        if lastNum > 5 {
            answer += 10 - lastNum
            number += 10
        }else if lastNum == 5 {
            answer += 5 
            number += nextNum > 4 ? 10 : 0
        }
        else{
            answer += lastNum
        }
        
        number = number / 10
        
    }
    
    
    
    
    
    
    return answer
}