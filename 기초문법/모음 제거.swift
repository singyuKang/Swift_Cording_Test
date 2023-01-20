import Foundation

func solution(_ my_string:String) -> String {
    
    // my_string.filter( { !["a","e","o","i","u"].contains($0) })
    
    let newStr = my_string.replacingOccurrences(of: "[aeiou]", with: "", options: .regularExpression)

    return newStr
}