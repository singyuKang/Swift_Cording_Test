import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    // print(numlist.sorted{
    //     if( abs($0 - n) ==   abs($1 - n)){
    //         return $0 > $1
    //     }else{
    //         return abs($0 - n) < abs($1 - n)
    //     }
    // })
    
    return numlist.sorted{
        if( abs($0 - n) ==   abs($1 - n)){
            return $0 > $1
        }else{
            return abs($0 - n) < abs($1 - n)
        }
    }
}