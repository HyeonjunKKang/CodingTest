import Foundation

let inn = 4
let inleft = 7
let inright = 14

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    
    for i in left...right{
        result.append(max(Int(i) / n, Int(i) % n) + 1)
    }
    
    return result
}

print(solution(inn, Int64(inleft), Int64(inright)))
