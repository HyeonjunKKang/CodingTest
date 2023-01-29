import Foundation

let list = [2, 100, 120, 600, 12, 12]
let inn = 12

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    //결과 배열
    var result = [Int]()
    
    for i in numlist{
        //i를 n으로 나웠을 때 0이면 배수
        if i % n == 0{
            result.append(i)
        }
    }
    return result
}

print(solution(inn, list))
