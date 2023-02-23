import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progresses = progresses
    var speeds = speeds
    var answer : [Int] = []
    var day = 0
    var count = 0
        
    while(progresses.count > 0) {
        // print(progresses)
        // print(count)
        var value = progresses[0] + speeds[0] * day
        if(value >= 100){
            progresses.removeFirst()
            speeds.removeFirst()
            count += 1
        }else{
            if(count > 0) {
                answer.append(count)
            }
            count = 0;
            day += 1
        }
        
    }
    if(count > 0){
        answer.append(count)
    }
    return answer.map{Int(String($0))!}
}