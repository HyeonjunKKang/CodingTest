import Foundation

func solution(_ n:Int) -> Int {
    var thrid = String(n, radix: 3)
    
    return Int(String(thrid.reversed()), radix: 3)!
}

solution(45)
