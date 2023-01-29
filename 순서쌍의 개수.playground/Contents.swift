import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    //n 나누기 1, 2, 3...20 의 나머지가 0이라면 += 1
    for i in 1...n{
        if n % i == 0{
            answer += 1
        }
    }
    return answer
}
