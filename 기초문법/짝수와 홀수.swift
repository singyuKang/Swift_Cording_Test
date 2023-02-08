func solution(_ num:Int) -> String {
    if(num % 2 == 0){
        return "Even"
    }else{
        return "Odd"
    }
}

func solution1(_ num:Int) -> String {
    
    return num % 2 == 0 ? "Even" : "Odd"
}