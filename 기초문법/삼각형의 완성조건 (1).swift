import Foundation

func solution(_ sides:[Int]) -> Int {
    var sides_sort = sides.sorted()
    if(sides_sort[0] + sides_sort[1] <= sides_sort[2]){
        return 2
    }else{
        return 1
    }
}