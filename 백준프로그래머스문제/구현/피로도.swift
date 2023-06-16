import Foundation


var answer = 0
var work = 0
var fatigue = 0
var time = 0

let inputArray = readLine()!.split(separator : " ").map{Int(String($0))!}
let (inputA, inputB, inputC, inputM ) = (inputArray[0], inputArray[1], inputArray[2], inputArray[3])

while time < 24 {

    if( (inputM - fatigue) >= inputA){
        work += inputB
        fatigue += inputA
    }else{
        fatigue -= inputC
        if(fatigue < 0){
            fatigue = 0
        }
    }

    time += 1

}
print(work)