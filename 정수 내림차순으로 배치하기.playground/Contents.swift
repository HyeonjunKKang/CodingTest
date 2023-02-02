func solution(_ n:Int64) -> Int64 {
    let str = String(n).sorted{$0 > $1}
    
    return Int64(String(str))!
}

