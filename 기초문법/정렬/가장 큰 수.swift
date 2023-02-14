import Foundation

func solution(_ numbers:[Int]) -> String {
    
    var answer = ""
    
    var numbersArray = numbers.sorted{ (a,b) -> Bool in 
      var aString = String(a)
      var bString = String(b)
                                      
      return bString + aString < aString + bString
    }
    
    return numbersArray.map{String($0)}[0] == "0" ? "0" : numbersArray.map{String($0)}.joined()
}