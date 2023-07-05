import Foundation

var n = String(readLine()!)
var mydic : [String:Int] = ["ABC" : 3, "DEF" : 4,"GHI" : 5, "JKL" : 6,"MNO" : 7,"PQRS" : 8,"TUV" : 9,"WXYZ" : 10]
var answer = 0


for i in n {
    let value = String(i)
    
    for k in mydic.keys{
        if k.contains(value){
            answer += mydic[k]!
        }
    }
    
    
//    print(type(of: i))
}

print(answer)
