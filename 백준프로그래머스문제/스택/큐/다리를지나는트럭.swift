import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/42583?language=swift
func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    //건너야하는 트럭 리스트
    var truck = truck_weights
    //시간을 재는 time
    var time = 0
    //다리 위에 있는 트럭의 무게
    var bridge_weight = 0
    //다리의 길이를 초기화
    var crossing = Array(repeating: 0, count: bridge_length)
    
    while !truck.isEmpty || bridge_weight != 0 {
        time += 1
        
        bridge_weight -= crossing.removeFirst()
        
        if !truck.isEmpty {
            if bridge_weight + truck.first! <= weight {
                bridge_weight += truck.first!
                crossing.append(truck.first!)
                truck.removeFirst()
            }else{
                crossing.append(0)
            }
    
        }
   
    }
    
    return time
}