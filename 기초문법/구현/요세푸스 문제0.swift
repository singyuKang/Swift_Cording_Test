import Foundation

//백준 11866번
let input = readLine()!

let inputArray = input.split(separator: " ").map{Int(String($0))!}


var answer : [Int] = []


var myArray = Array(repeating: 0, count: inputArray[0])
var count = inputArray[1]-1

for (index,_) in myArray.enumerated() {
    myArray[index] += index + 1
}

print("<", terminator: "")
while myArray.count != 1 {
    
    if count >= myArray.count {
        count %= myArray.count
    }
    let value = myArray.remove(at: count)
    print(value,terminator: ", ")
    
    count += inputArray[1]-1
    
    
}
print("\(myArray[0])>")