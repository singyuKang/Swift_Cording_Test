import Foundation

// 백준 1157번 https://www.acmicpc.net/problem/1157

var input = readLine()!.map{ String($0) }
var dic : [String : Int] = [:]

for i in input {
    if let _ = dic[i.uppercased()] {
        dic[i.uppercased()]! += 1
    }else {
        dic[i.uppercased()] = 1
    }
}

let largestNumber = dic.values.max()!

let filterDic = dic.filter{
    $0.value == largestNumber
}

if filterDic.count > 1 {
    print("?")
}else if filterDic.count == 1 {
    print(filterDic.keys.first!)
}
