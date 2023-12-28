import Foundation

//백준 https://www.acmicpc.net/problem/2920

var input = readLine()!.split(separator: " ").map { Int(String($0))! }

if input == input.sorted(by: <) {
    print("ascending")
}else if input == input.sorted(by: >){
    print("descending")
}else{
    print("mixed")
}

