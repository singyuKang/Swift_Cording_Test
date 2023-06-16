import Foundation

func solution(_ angle:Int) -> Int {
    // angle< 90 ? return 1; : angle == 90 ? return 2; : angle<180 ? return 3; : angle == 180 ? return 4; : return 0;
    if(angle>0 && angle < 90){
        return 1
    }else if(angle == 90){
        return 2
    }else if(angle>90 && angle < 180){
        return 3
    }else if(angle==180){
        return 4
    }else{
        return 0
    }

    // return angle < 90 ? 1 : angle == 90 ? 2 : angle < 180 ? 3 : 4
    
    
}