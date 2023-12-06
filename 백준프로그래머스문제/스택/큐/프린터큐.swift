import Foundation

let n = Int(readLine()!)!
var answerList : [Int] = []

for _ in 0..<n {
    let NM = readLine()!.split(separator: " ").map{Int(String($0))!} // 4 2
    let myTargetValueIndex = NM[1]
    var input = readLine()!.split(separator: " ").map{Int(String($0))!}// 1 2 3 4
    // 6 0
    // 1 1 9 1 1 1
    //문서의 개수 , 궁금한 문서가 몇번째 있는지
    var queue = [(Int, Int)]()
    var result = 0

    for (i, value) in input.enumerated() {
        queue.append((value, i))
    }
    
    while !queue.isEmpty {
        if queue.first!.0 < queue.max(by: {$0.0 < $1.0})!.0 {
            let value = queue.removeFirst()
            queue.append(value)
        }else if queue.first!.1 == myTargetValueIndex {
            result += 1
            break
        }
        else{
            queue.removeFirst()
            result += 1
        }
    }
    
    answerList.append(result)

}

for i in answerList {
    print(i)
}
