import Foundation


//시간 초과
func solution(_ numbers:[Int]) -> [Int] {
    var answer:[Int] = []
    
    for (index, number) in numbers.enumerated() {
        if(index == numbers.count-1){
            answer.append(-1)
        }else{
            var idx = index
            // print(idx)
            while(idx < numbers.count){
                idx += 1
                
                if(numbers[index] < numbers[idx]){
                    answer.append(numbers[idx])
                    break
                }
                if(idx == numbers.count-1){
                    answer.append(-1)
                    break
                }
            }
        }
    }

    
    return answer
}

//스텍에 저장
func solution1(_ numbers:[Int]) -> [Int] {
    var answer:[Int] = []
    var numList = numbers
    
    
    var result = Array(repeating: -1, count: numbers.count)
    var stack :[(Int,Int)] = []
    
    for i in 0..<numbers.count {
        // print(stack)
        // print(result)
        while !stack.isEmpty && stack.last!.1 < numbers[i] {
            let (j, _) = stack.popLast()!
            result[j] = numbers[i]
        }
        stack.append((i, numbers[i]))
        
    }

    
    return result
}