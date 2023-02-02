import Foundation

func solution(_ n:Int) -> Int {
    //n을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x
    
    var i = 2
    while n % i != 1{
        i += 1
    }
    return i
}

solution(49581)
