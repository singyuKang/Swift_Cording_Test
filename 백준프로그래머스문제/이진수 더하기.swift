import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    
    let binaryNumber1:Int = Int(bin1, radix: 2)!
    let binaryNumber2:Int = Int(bin2, radix: 2)!
    return String(binaryNumber1 + binaryNumber2, radix: 2)
}