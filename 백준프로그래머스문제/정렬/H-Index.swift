import Foundation

func solution(_ citations:[Int]) -> Int {
    var citationsSort = citations.sorted(by : >)
     
    for i in 0..<citationsSort.count {
       if(citationsSort[i] <= i){
           return i
       } 
    }
    
    // print(citationsSort)
    
    return citationsSort.count
}