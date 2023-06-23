import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var dic : [String : Int] = [:]
    var todayList = today.split(separator : ".").map({Int(String($0))!})
    var (todayYear, todayMonth, todayDay) = (todayList[0], todayList[1], todayList[2])
    var index = 1
    var answer : [Int] = []

    //dic 완성
    for i in terms {
        var myList = i.split(separator : " ").map({String($0)})
        var (category, limitValue) = (myList[0], myList[1])
        
        if let _ = dic[category] {
            
        }else{
            dic.updateValue( Int(limitValue)!, forKey : category)
        }
        
        
    }
    
    for i in privacies {
        
        var myList = i.split(separator : " ").map({String($0)})
        var (date, category) = (myList[0], myList[1])
        var todayList = date.split(separator : ".").map({Int(String($0))!})
        var (privaciesYear, privaciesMonth, privaciesDay) = (todayList[0], todayList[1], todayList[2])
        
        var limitValue = dic[category]!
        
        
        
        privaciesMonth += limitValue
        
        if privaciesMonth > 12 {
            
            let q = privaciesMonth / 12
            let r = privaciesMonth % 12
            
            if r == 0 {
                privaciesYear += q-1
                privaciesMonth = 12
            }else{
                privaciesYear += q
                privaciesMonth = r
            }

            
        }
        
        if(privaciesYear < todayYear) {
            answer.append(index)
        }else if(privaciesYear == todayYear){
            if(privaciesMonth < todayMonth){
                 answer.append(index)
            }else if(privaciesMonth == todayMonth){
                if(privaciesDay <= todayDay){
                    answer.append(index)
                }
            }
        }

        index += 1 
        
        
    }
    
    
    

    return answer.sorted(by : <)
}