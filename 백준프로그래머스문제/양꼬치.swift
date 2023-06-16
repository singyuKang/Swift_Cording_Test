import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    //양꼬치 12000  음료수 2000    
    // 10인분 음료수 1개 공짜
    var service = n/10
    return n*12000 + (k-service)*2000
}