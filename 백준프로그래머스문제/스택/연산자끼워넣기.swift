import Foundation

let n = Int(readLine()!)!
var numberList = readLine()!.split(separator: " ").map{Int(String($0))!}
var operatorList = readLine()!.split(separator: " ").map{Int(String($0))!}
var answerList : [Int] = []

func dfs(_ myValue : Int, _ myIndex : Int, _ myOperatorList : [Int]){

    if myIndex == numberList.count-1{
        answerList.append(myValue)
        return
    }
    
    let (plus, minus , multiply , divide) = (myOperatorList[0], myOperatorList[1],myOperatorList[2],myOperatorList[3])
    if plus > 0 {
        dfs(myValue + numberList[myIndex+1], myIndex + 1, [plus-1 , minus, multiply, divide])
    }
    if minus > 0 {
        dfs(myValue - numberList[myIndex+1], myIndex + 1,[plus , minus-1, multiply, divide])

    }
    if multiply > 0 {
        dfs(myValue * numberList[myIndex+1], myIndex + 1, [plus , minus, multiply-1, divide])
    }
    if divide > 0 {
        dfs(myValue / numberList[myIndex+1], myIndex + 1, [plus , minus, multiply, divide-1])
    }


}

dfs(numberList[0], 0, operatorList)

print(answerList.max()!)
print(answerList.min()!)