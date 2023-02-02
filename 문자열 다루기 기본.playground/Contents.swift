func solution(_ s:String) -> Bool {
    let lenth = s.count != 6 && s.count != 4 ? false : true
    var num = true
    
    if let _ = Int(s){
        
    }else{
        num = false
    }
    
    return lenth && num
}

solution("34")
