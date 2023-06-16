import Foundation

func solution(_ quiz:[String]) -> [String] {
    let strArr = quiz.map { $0.components(separatedBy: " ") }
    var result: [String] = []
    strArr.forEach {
        switch $0[1] {
        case "-":
            result.append(Int($0[0])! - Int($0[2])! == Int($0[4])! ? "O": "X")
        case "+":
            result.append(Int($0[0])! + Int($0[2])! == Int($0[4])! ? "O": "X")
        default: print("error")
        }
    }

    return result
}