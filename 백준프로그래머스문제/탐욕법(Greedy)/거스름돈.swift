import Foundation

// 백준 14916번  https://www.acmicpc.net/problem/14916

let inputNumber = Int(readLine()!)!

if inputNumber == 1 || inputNumber == 3 {
    print(-1)
}else{
    var fiveCount = inputNumber / 5
    var restFive = inputNumber % 5

    while restFive % 2 != 0 && fiveCount > 0 {
        restFive += 5
        fiveCount -= 1
    }

    print(fiveCount + restFive / 2)
    
}

