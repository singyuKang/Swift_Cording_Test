import Foundation

func solution(_ answers:[Int]) -> [Int] {
    // 1번 1 2 3 4 5 
    // 2번 2 1 2 3 2 4 2 5
    // 3번 3 3 1 1 2 2 4 4 5 5
    var numberOne = 0
    var numberTwo = 0
    var numberThree = 0
    
    var answerArray : [Int] = []
    var answerList : [Int] = []
    
    var numberOneArray = [1,2,3,4,5]
    var numberTwoArray = [2,1,2,3,2,4,2,5]
    var numberThreeArray = [3,3,1,1,2,2,4,4,5,5]
    
    for (index, number) in answers.enumerated() {
        if(number == numberOneArray[index % 5]){
            numberOne += 1
        }
        if(number == numberTwoArray[index % 8]){
            numberTwo += 1
        }
        if(number == numberThreeArray[index % 10]){
            numberThree += 1
        }
    }
    
    answerArray.append(numberOne)
    answerArray.append(numberTwo)
    answerArray.append(numberThree)
    
    
    for (index, number) in answerArray.enumerated() {
        if(number == answerArray.max()!){
            answerList.append(index+1)
        }
    }

    
    return answerList
}