import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    let answer = Array<Int>(numbers[num1...num2])
    return answer
}