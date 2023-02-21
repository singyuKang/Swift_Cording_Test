import Foundation


//수정필요 오류

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progresses = progresses
    var speeds = speeds
    var answer : [Int] = []
    
    // print(answer.dropFirst(0))

    
    while(progresses.count > 0) {
        
        var count = 0
        var day = 0
        
        var value = progresses[0] + speeds[0] * day
        
        if(value >= 100){
            progresses.removeFirst()
            speeds.removeFirst()
            count += 1
        }
        else{
            if(count > 0) {
                answer.append(count)
            }
            count = 0;
            day += 1
        }
        
        answer.append(count)

    }
    return answer.map{Int(String($0))!}
}