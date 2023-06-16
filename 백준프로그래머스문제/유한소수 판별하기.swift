import Foundation

func gcd(_ a: Int, _ b: Int) -> Int{
    if (b == 0) { return a }
    return gcd(b, a % b)
}


func solution(_ a:Int, _ b:Int) -> Int {
    
    var num = b / gcd(a,b)
    
    while num % 2 == 0 {
        num /= 2
    }
    
    while num % 5 == 0 {
        num /= 5
    }
    
    return num == 1 ? 1 : 2

}