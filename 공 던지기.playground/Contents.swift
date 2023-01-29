import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    var Thrower  = 0
    for _ in 0..<k-1{
        // 1회 던질때 인덱스는 2가 늘어나고 n명의 범위 이내안에서 순회해야 하기 때문에 % count
        Thrower = (Thrower + 2) % numbers.count
    }
    
    return numbers[Thrower]
}

