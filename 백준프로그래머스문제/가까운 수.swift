import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var array_sorted = array.sorted()
    var abs_list = array_sorted.map({ abs($0-n) })
    
    for (index, element) in abs_list.enumerated(){
        if(element == abs_list.min()!){
            return array_sorted[index]
        }
    }
    
    
    
    return 0
}