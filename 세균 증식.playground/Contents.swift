import Foundation
let inn = 2
let int = 10


func solution(_ n:Int, _ t:Int) -> Int {
    //결과 배열
    var result = n
    //t번 만큼 2배로 증가
    for i in 1...t{
        result *= 2
    }
    return result
}

solution(inn, int)
