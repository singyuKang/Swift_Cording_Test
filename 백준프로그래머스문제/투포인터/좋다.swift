import Foundation

//백준 1253번 https://www.acmicpc.net/problem/1253

var arrCount = Int(readLine()!)!
var arr : [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var count = 0


for i in 0..<arrCount {
    let arrValue = arr[i]
    var start = 0
    var end = arrCount-1

    while start < end {
        if arr[start] + arr[end] == arrValue {
//            arrValue 가 아닌 다른수의 합으로 나타낼수 있어야함
            if start != i && end != i {
                count += 1
                break
                
            }else if start == i {
                start += 1
            }else if end == i {
                end -= 1
            }
        }else if arr[start] + arr[end] > arrValue {
            end -= 1
        }else if arr[start] + arr[end] < arrValue {
            start += 1
        }
    }
    
}
print(count)