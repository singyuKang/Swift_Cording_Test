import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var maxWidth = 0
    var maxHeight = 0
     
    
    sizes.forEach{
        let size = $0.sorted()
        maxWidth = maxWidth > size[0] ? maxWidth : size[0]
        maxHeight = maxHeight > size[1] ? maxHeight : size[1]    
    }
    
    return maxWidth * maxHeight
}