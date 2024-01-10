import Foundation

// 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/258712
func solution(_ friends:[String], _ gifts:[String]) -> Int {

    //누가 많이 받을지
    //준거 - 받은거 = 선물지수

    //받을 선물의 수
    //가장 많이 선물을 받은 친구가 받을 선물의수 리턴
    //주고받은 기록저장

    //선물지수
    var dic : [String : Int] = [:]

    var answer = 0

    //prsentCount
    var presentCount : [String : Int] = [:]

    for i in friends {
        dic[i] = 0
        presentCount[i] = 0
    }

    //주고받은기록저장
    var presentDic : [[String] : Int] = [:]


    for i in gifts {
        let giftArray = i.split(separator : " ").map{String($0)}
        //준사람
        dic[String(giftArray[0])]! += 1
        //받은사람
        dic[String(giftArray[1])]! -= 1
        //선물지수 완성

        if let presentDicValue = presentDic[giftArray]{
            presentDic[giftArray]! += 1
        }else{
            presentDic[giftArray] = 1
        }


    }

    for i in 0..<friends.count {
        for k in i+1..<friends.count{ 
            let (friendOne, friendTwo) = (friends[i], friends[k])
            if let presentDicOneValue = presentDic[[friendOne, friendTwo]] {
                if let presentDicTwoValue = presentDic[[friendTwo, friendOne]]{

                    if presentDicOneValue == presentDicTwoValue {
                        if dic[friendOne]! == dic[friendTwo]!{
                            continue
                        }

                        if dic[friendOne]! > dic[friendTwo]! {
                             presentCount[friendOne]! += 1
                        }else{
                             presentCount[friendTwo]! += 1
                        }

                        continue
                    }

                    if presentDicOneValue > presentDicTwoValue {

                        presentCount[friendOne]! += 1
                    }else{
                        presentCount[friendTwo]! += 1
                    }


                }else{

                     presentCount[friendOne]! += 1
                }

            }else{
                if let presentDicOneValue = presentDic[[friendTwo, friendOne]]{
                      presentCount[friendTwo]! += 1
                }else{
                    if dic[friendOne]! == dic[friendTwo]! {
                        continue
                    }

                    if dic[friendTwo]! >  dic[friendOne]! {
                         presentCount[friendTwo]! += 1
                    }else{
                        presentCount[friendOne]! += 1
                    }
                }

            }
             


        }
    }

    answer = presentCount.values.max()!

    return answer
}
