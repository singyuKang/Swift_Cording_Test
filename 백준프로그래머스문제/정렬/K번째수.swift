import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer:[Int] = []
    // i 번째 부터 j 번째 숫자까지 자르고 정렬 k번째 수
    
    for i in 0..<commands.count {
        // print(i)
        var arr : [Int] = []
        for j in commands[i][0]-1...commands[i][1]-1{
            arr.append(array[j])
        }
        arr.sort()
        answer.append(arr[commands[i][2]-1])
    }

    return answer
}