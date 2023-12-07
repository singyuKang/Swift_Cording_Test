import Foundation

//1차시도 실패
func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    
    var reportCount : [String : Int] = [:]
    var reportList : [String : [String]] = [:]
    var answerList : [Int] = []
    var answerCount : [String : Int] = [:]
    
    for i in id_list {
        if let count = reportCount[i] {
            
        }else{
            reportCount[i] = 0
            answerCount[i] = 0
        }
    }
    
    for i in report {
        let report = i.split(separator : " ").map({String($0)})
        var (reportPersonOne , reportPersonTwo) = (report[0], report[1])
        
        if let _ = reportList[reportPersonOne] {
            if !reportList[reportPersonOne]!.contains(reportPersonTwo) {
                    reportList[reportPersonOne]!.append(reportPersonTwo)
                    reportCount[reportPersonTwo]! += 1
            }
        }else{
            reportList[reportPersonOne] = [reportPersonTwo]
             reportCount[reportPersonTwo]! += 1
        }

    }

    for i in reportCount {
        var (key, value) = (i.key, i.value)
        if value >= k {
            for k in reportList {
                var (reportkey, reportvalue) = (k.key, k.value)
                
                for j in reportvalue {
                    if j == key {
                        answerCount[reportkey]! += 1
                    }
                }
            }
      
          
        }   
    }

    for i in id_list {
        if let _ = answerCount[i] {
            answerList.append(answerCount[i]!)
        }
        
    }
    
    return answerList
}

//풀이방식 변경 
func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {

    var reportedList : [String : Set<String>] = [:]
    var idxList : [String : Int] = [:]
    var answer = Array(repeating : 0, count : id_list.count)
    
    for (index, value) in id_list.enumerated(){
        idxList[value] = index
    }
    
    for i in report {
        let split = i.split(separator : " ")
        let (report , reported) = (String(split[0]),String(split[1]))
        
        if let _ = reportedList[reported] {
             reportedList[reported]!.insert(report)
        } else{
             reportedList[reported] = [report]
        }     
    }
    
    for i in reportedList{ 
        if i.value.count >= k {
            for j in i.value {
                answer[idxList[j]!] += 1
            }
        }
    }
    
    return answer
        
 
    
    
}