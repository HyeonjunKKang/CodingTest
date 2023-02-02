import Foundation
func solution(_ n:Int64) -> Int64 {
    
    let x = sqrt(Double(n))
    var result: Int64 = 0
    
    if x == Double(Int(x)){
        result = (Int64(x) + 1) * (Int64(x) + 1)
    }else{
        result = -1
    }
    return result
}

solution(121)
