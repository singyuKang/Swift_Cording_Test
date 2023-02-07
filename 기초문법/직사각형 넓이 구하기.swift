import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    
    // print(dots.sorted(by : {$0[0] > $1[0]}))
    let dots_sorted = dots.sorted(by : {$0[0] > $1[0]}).sorted(by : {$0[1] > $1[1]})

    return abs(dots_sorted[0][0] - dots_sorted[1][0]) * abs(dots_sorted[0][1] - dots_sorted[2][1])
}
