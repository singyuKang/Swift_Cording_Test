import Foundation

//백준 10816번 https://www.acmicpc.net/problem/10816
var N = Int(readLine()!)!
var sangArray : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var M = Int(readLine()!)!
var myArray : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var hashMap : [Int:Int] = [:]

for i in sangArray {
    if hashMap.keys.contains(i){
        hashMap[i]! += 1
    }else{
        hashMap[i] = 1
    }
    
}

for i in myArray {
    if let _ = hashMap[i] {
        print(hashMap[i]!, terminator: " ")
    }else{
        print(0, terminator: " ")
    }
    
}