import Foundation

//프로그래머스 달리기 경주
func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var playersArray = players
    var calls = callings
    var dict : [String : Int] = [:]
    
    
    for i in 0..<playersArray.count {
        dict[playersArray[i]] = i
    }
    
    for i in 0..<calls.count {
        var call = calls[i]
        var idx1 = dict[call]!
        let name = playersArray[idx1 - 1]
        playersArray[idx1 - 1] = call
        playersArray[idx1] = name
        dict[call]! -= 1
        dict[playersArray[idx1]]! += 1
    }
    
    return playersArray
      

      //시간초과 배열로 X 딕셔너리활용
//     for name in callings {
//         let nameIndex = playersArray.firstIndex(of : name)!
//         let playerSave = playersArray[nameIndex-1]
        
//         playersArray[nameIndex-1] = name
//         playersArray[nameIndex] = playerSave
            
        
        
//     }
   
//     return playersArray
    
    
}