import Foundation
//import Combine

//func readLine(strippingNewline : Bool = true) -> String?

//let input = readLine()!
var n = Int(readLine()!)!
//let inputArray = input.split(separator: " ").map{Int(String($0))!}
//let inputArray = input.split(separator: " ").map{String($0)}

let firstValue = n


var answer = 1


//var arr = Array(repeating: Array(repeating: 0, count : 2), count: n)
//var rankArr = Array(repeating: 1, count: n)
//readLine()!.split(separator : " ").map{Int($0)!}

//print(inputArray[0] + inputArray[1])

//for _ in 0..<n {
//    arr.append(String(readLine()!))
//}

if(n==1){
    print(60)
}else{
    
    if(n<10){
        n *= 10
    }



    var sum = 0
    for i in String(n){
        sum += Int(String(i))!
    }

    sum %= 10
    n %= 10
    n = Int(String(n)+String(sum))!

    //

    while(firstValue != n){

    //    if(n<10){
    //        n *= 10
    //    }

        var k = 0
        for i in String(n){
            k += Int(String(i))!
        }

        k %= 10
        n %= 10
        n = Int(String(n)+String(k))!
        answer += 1
    }

    print(answer)

    
}
