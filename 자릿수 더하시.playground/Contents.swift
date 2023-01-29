import Foundation

let data = 1234

func solution(_ n:Int) -> Int {
    let input = Array(String(n))
    var result = 0
    for i in input{
        result += i.wholeNumberValue!
    }
    return result
}

print(solution(data))
