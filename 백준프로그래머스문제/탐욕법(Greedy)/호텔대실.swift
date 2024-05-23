import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/155651
func solution(_ book_time:[[String]]) -> Int {
    
    var answer = 0
    var roomEndTime : [Int] = Array(repeating : 0 , count : 1001)
    
    func timeToValue(_ str : String) -> Int {
        var input = str.split(separator : ":")
        var (hour , minutes) = (Int(input[0])! , Int(input[1])!)
        return hour * 60 + minutes      
    }
    
    var book_time : [[Int]] = book_time.map { $0.map { timeToValue($0) }}
    
    book_time.sort {
        $0[0] < $1[0]
    }
    
    for book in book_time {
        let (startTime , endTime) = (book[0] , book[1])
        for (index, roomTime) in roomEndTime.enumerated() {
            if startTime >= roomTime  {
                roomEndTime[index] = endTime + 10
                break
            } 
        }
    }
    // print(book_time)
    // print(roomEndTime)
    

    return roomEndTime.filter{ $0 != 0 }.count
}