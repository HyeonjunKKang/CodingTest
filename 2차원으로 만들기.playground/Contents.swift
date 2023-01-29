import Foundation

let data = [1, 2, 3, 4, 5, 6, 7, 8]
func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: n), count: num_list.count / n)
    
    //0, 1, 2, 3, 4 -> [0][0], [0][1], [1][0], [1][1]
    for i in 0..<num_list.count{
        answer[i / n][i % n] = num_list[i]
    }
    return answer
}

solution(data, 2)
