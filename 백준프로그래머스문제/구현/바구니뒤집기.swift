import Foundation

////백준 10811번 https://www.acmicpc.net/problem/10811
func solutionOne() {
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var (N,M) = (input[0], input[1])
    var arr : [Int] = Array(0...N)

    for _ in 0..<M {
        let ijInput = readLine()!.split(separator: " ").map { Int(String($0))! }
        var (i,j) = (ijInput[0], ijInput[1])
        
        while i < j {
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            
            i += 1
            j -= 1
        }
        
    }

    arr.removeFirst()
    print(arr.map{String($0)}.joined(separator: " "))

}

func solutionTwo(){
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var (N,M) = (input[0], input[1])
    var arr : [Int] = Array(0...N)

    for _ in 0..<M {
        let ijInput = readLine()!.split(separator: " ").map { Int(String($0))! }
        var (i,j) = (ijInput[0], ijInput[1])
        arr[i...j].reverse()
    }
    
    
}