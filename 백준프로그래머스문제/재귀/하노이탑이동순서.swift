import Foundation

// 백준 11729번 https://www.acmicpc.net/problem/11729

func move(start: String, to: String) {
    print(start, to)
}

// 원반 갯수 , 시작 , 목표, 보조
func hanoi(n: Int, start: String, to: String, asist: String) {
    if n == 1 {
        move(start: start, to: to)
        return
    }
    
    hanoi(n: n - 1, start: start, to: asist, asist: to)
    move(start: start, to: to)
    hanoi(n: n - 1, start: asist, to: to, asist: start)
    
}

let n = Int(readLine()!)!

print(pow(2, n) - 1)
hanoi(n: n, start: "1", to: "3", asist: "2")