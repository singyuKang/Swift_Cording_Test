import Foundation


// 수정필요
func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var stack_array : [String]  = []
    
    var s_array = s.map{String($0)}
    
    if(s_array[0] == ")") {
        return false
    }
    
    for i in s.map{String($0)} {
        // print(i)
        // stack_array.append()
        if(i == "(") {
            stack_array.append("(")
        }else{
            guard let last = stack_array.popLast() else {
                // print("breack")
                break
            }
            // var last = stack_array.popLast()
            // print(last)
            if(last == ")"){
                return false
            }else{
                // guard let removeLast = stack_array.removeLast() else {
                //     break
                // }
                if(stack_array.count > 0){
                    stack_array.removeLast()
                }
                continue
            }
        }
    }
    
    
    return stack_array.count > 0 ? false : true
    
}