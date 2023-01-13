import Foundation

let data = 976
func solution(_ n:Int) -> Int {
    var result = 2
    while(result < n ){
        if result * result == n{
            return 1
        }
        result += 1
    }

    return 2
}

solution(data)
