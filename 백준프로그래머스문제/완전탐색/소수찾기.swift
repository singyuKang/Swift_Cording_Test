import Foundation

func solution(_ numbers:String) -> Int {
    
    var nums = numbers.map { String($0) }
    var numSet : Set<Int> = []
    
    //소수판별
    func isPrime(_ num: Int) -> Bool {
        
        if(num == 0) {
            return false
        }
        
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { 
                return false
            }
        }
        return true
    }
    
    //순열
    func permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
        var result = [[T]]()
        if array.count < n { return result }

        var visited = Array(repeating: false, count: array.count)

        func cycle(_ now: [T]) {
            if now.count == n {
                result.append(now)
                return
            }

            for i in 0..<array.count {
                if visited[i] {
                    continue
                } else {
                    visited[i] = true
                    cycle(now + [array[i]])
                    visited[i] = false
                }
            }
        }
        cycle([])
        return result
    }
    
    //순열 선택 
    for i in 1...nums.count{
        let permutationArray = permutation(nums, i)
        for k in permutationArray{ 
            let numberValue = k.joined(separator : "")
            numSet.insert(Int(numberValue)!)
        }
    }

    
    return numSet.filter{ isPrime($0)}.count
}