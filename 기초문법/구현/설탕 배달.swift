import Foundation

//백준 2839번
var inputValue = Int(readLine()!)!
var fiveValue = 0
var threeValue = 0


while inputValue > 0 {
    if(inputValue % 5 == 0){
       fiveValue = inputValue / 5
       break
    }else{
        threeValue += 1
        inputValue -= 3
    }
}

if(inputValue < 0){
    print(-1)
}else{
    print(fiveValue + threeValue)
}
