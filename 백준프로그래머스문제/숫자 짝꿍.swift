import Foundation

//시간초과
func solution(_ X:String, _ Y:String) -> String {
    
    var answer_list:[Int] = []
    var Y_list = Array(Y).map({String($0)})
    
    
    for i in X {
        if(Y_list.contains(String(i))){
            answer_list.append(Int(String(i))!)
            let remove_index = Y_list.firstIndex{ $0 == String(i)}
            Y_list.remove(at : remove_index!)
        }
    }
    // print(answer_list)
    
    if(answer_list.count == 0){
        return "-1"
    }
    else{
        answer_list.sort(by : >)
        // print(answer_list)
        if(answer_list[0] == 0){
            return "0"
        }else{
            return answer_list.map({String($0)}).joined(separator : "")
        }
    }    
}

//dictionary 활용
func solution1(_ X:String, _ Y:String) -> String {
    var dictX: [String:Int] = [:]
    var dictY: [String:Int] = [:]
    var numList: [String] = []
       
    for x in X.map({ String($0) }){
        dictX[x] = (dictX[x] ?? 0) + 1
    }
    
    for y in Y.map { String($0) } {
        dictY[y] = (dictY[y] ?? 0) + 1
    }
    
    for key in dictX.keys {
        numList += Array(repeating: key, count: min((dictX[key] ?? 0), (dictY[key] ?? 0)))
    }
    
    
    if(numList.isEmpty){
        return "-1"
    }
    
    if(numList.sorted(by : >)[0] == "0"){
        return "0"
    }else{
        return numList.sorted(by : >).joined()
    }
    
}

