import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    
    var string_copy = my_string.replacingOccurrences(of: letter, with : "")
    return string_copy
}