import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
    var my_array = Array(my_string.map{String($0)})
    var first = my_array[num1]
    var second = my_array[num2]
    my_array[num1] = second
    my_array[num2] = first
    return my_array.joined(separator: "")
}