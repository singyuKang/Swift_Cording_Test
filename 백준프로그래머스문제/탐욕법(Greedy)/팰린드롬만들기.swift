import Foundation

// 백준 1213번  https://www.acmicpc.net/problem/1213
// DFS 풀이 시간초과
func solutionOne() {

    var input = readLine()!.map{ String($0) }
    var visited : [Bool] = Array(repeating: false, count: input.count)
    var answerList : Set<String> = []

    func dfs(_ count : Int,_ myString : String){

        if count == input.count && String(myString.reversed()) == myString {
            answerList.update(with: myString)
        }

        for i in 0..<input.count {

            if visited[i] == false {
                visited[i] = true
                dfs(count + 1 , myString + input[i])
                visited[i] = false
            }

        }
        
        
    }

    dfs(0, "")


    if answerList.count > 0 {
        print(answerList.sorted(by: <)[0])
    }else{
        print("I'm Sorry Hansoo")
    }
}

//홀수 갯수 체크로 풀이 통과
func solutionTwo(){
    var input = readLine()!.map{ String($0) }
    var dic : [String : Int] = [:]
    var oddList : [String] = []
    var answer = ""

    for i in input {
        if let _ = dic[i] {
            dic[i]! += 1
        }else{
            dic[i] = 1
        }
    }

    for key in dic.keys {
        if dic[key]! % 2 != 0 {
            oddList.append(key)
        }
    }


    if oddList.count > 1 {
        print("I'm Sorry Hansoo")
    }else{
        
        if oddList.count == 1 {
            answer = oddList[0]
            dic[oddList[0]]! -= 1
        }
        
        
        for key in dic.keys.sorted(by: >) {
            while dic[key]! != 0 {
                answer = key + answer + key
                dic[key]! -= 2
            }
        }
        print(answer)
        
    }


}



