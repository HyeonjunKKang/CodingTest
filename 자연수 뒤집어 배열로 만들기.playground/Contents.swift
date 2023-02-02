func solution(_ n:Int64) -> [Int] {
    return String(String(n).reversed()).map{Int(String($0))!}
}

