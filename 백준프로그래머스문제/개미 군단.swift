import Foundation

func solution(_ hp:Int) -> Int {
    //장군 5  병정 3  일개미 1 공격력
    let A = hp / 5
    let B = (hp - (5 * A)) / 3
    let C = (hp - (5 * A) - (3 * B))
    
    
    return A+B+C
}