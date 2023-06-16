import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var count = 1
    var answer:String = ""
    for i in cipher{
        if(count == code){
            answer += String(i)
            count = 1
        }else{
            count += 1
        }
    }
    return answer
}