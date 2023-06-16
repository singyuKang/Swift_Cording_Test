import Foundation


//TODO : 테스트 케이스 오류 수정필요
func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    
    var answer:[Int] = []
    var test :[Int] = []
    
    for i in targets {
        // print(i)
        var count = 0
        for k in i {
            // print(k)
            //keymap 에 존재하는지 확인
            var prev = 99999
            for r in keymap {

                var targetArray = r.map({String($0)})
                if let firstIndex = targetArray.firstIndex(of : String(k)) {
                   // print(firstIndex+1)
                   if(prev > firstIndex){
                       prev = firstIndex
                   }
                }
            }
            count += prev+1
            
        }

        answer.append(count)
    }
    
    answer.indices.filter{answer[$0] == 100000}.forEach{answer[$0] = -1}
    return answer
}