import Foundation

let boxdata = [10, 8, 6]
let n = 3

func solution(_ box:[Int], _ n:Int) -> Int {
    //부피 문제가 아님
    
    //가로 =  10, 주사위 한 면 = 3 -> 10 / 3  -> 3개가 들어감
    let w = box[0] / n
    //세로 = 8 -> 8 / 3 -> 2
    let h = box[1] / n
    //높이 = 6-> 6 / 3 = 2
    let d = box[2] / n
    // 3 * 2 * 2 = 12
    return w * h * d
}

print(solution(boxdata, n))
