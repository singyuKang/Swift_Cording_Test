import Foundation

func solution(_ A:String, _ B:String) -> Int {
    
    var answer = 0
    
    var A_array = Array(A).map(){ String($0) }
    
    if(A == B){
        return 0
    }
    
    for i in 0...A_array.count-1{
        // print(i)
        let temp = A_array[A_array.count-1]
        A_array.remove(at : A_array.count-1)
        A_array.insert(temp, at : 0)
        answer += 1
        
        if(A_array.joined(separator : "") == B){
            return answer
        }
        
    }
    
    
    
    return -1
}