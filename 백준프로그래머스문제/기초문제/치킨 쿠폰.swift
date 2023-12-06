import Foundation

func solution(_ chicken:Int) -> Int {
    
    // 서비스 치킨수  쿠폰개수/10
    // coupon = chicken 
    var coupon = chicken
    var chicken_number = chicken
    var answer = 0
    while(coupon >= 10){
        // print(chicken_number)
        var leftCoupon = coupon % 10
        // coupon += chicken_number
        // chicken_number = chicken_number / 10 
        answer += coupon / 10
        coupon = leftCoupon + coupon / 10
    }
    
    // coupon += chicken_number
    return answer 
}