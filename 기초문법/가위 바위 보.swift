import Foundation

func solution(_ rsp:String) -> String {
    //가위  2  바위 0 보 5
    var answer:String = ""
    for i in rsp{
        // print(i)
        if(i == "2"){
            answer += "0"
        }else if(i == "0"){
            answer += "5"
        }else if(i == "5"){
            answer += "2"
        }
    }
    
    return answer
}