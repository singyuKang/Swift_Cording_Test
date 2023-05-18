import Foundation

//백준 4796번
var answerList : [Int] = []

while(true){
    let input = readLine()!
    let inputArray = input.split(separator: " ").map{Int(String($0))!}
    let l = inputArray[0]
    let p = inputArray[1]
    let v = inputArray[2]
    
    if(l == 0 && p == 0 && v == 0 ){
        break
    }else{
        answerList.append( ((v / p) * l) + min(( v % p ), l) )
    }
}

for (index, value) in answerList.enumerated() {
    print("Case \(index + 1): \(value)")
}
