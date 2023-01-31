import Foundation

func solution(_ n:Int) -> [Int] {
    
    var number = n
    var answer:[Int] = []
    
    for i in 2...n{
        // print(i)
        while(number % i == 0){
            answer.append(i)
            number = number / i
        }
    }

    return Array(Set(answer)).sorted()

}