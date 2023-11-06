import Foundation


//프로그래머스 바탕화면 정리
func solution(_ wallpaper:[String]) -> [Int] {
    
    var xArray : [Int] = []
    var yArray : [Int] = []
    
    for (index1, paper) in wallpaper.enumerated() {
        if paper.contains("#"){
            for (index2 , wall) in paper.map{String($0)}.enumerated(){
                if wall == "#" {
                    xArray.append(index1)
                    yArray.append(index2)
                }
            }
        }
    }
    
    return [xArray.min() ?? 0, yArray.min() ?? 0, xArray.max()!+1, yArray.max()!+1]
    
}