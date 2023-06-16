import Foundation


// 백준 2884번
var inputArray = readLine()!.split(separator: " ").map({Int(String($0))!})
var (x,y) = (inputArray[0], inputArray[1])

y -= 45
if(y < 0){
    y += 60
    x -= 1
}

if(x < 0){
    x = 23
}

print(x, terminator: " ")
print(y, terminator: " ")