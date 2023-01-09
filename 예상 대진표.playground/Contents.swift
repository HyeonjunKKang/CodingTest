import Foundation

let n1 = 8
let a1 = 4
let b1 = 7

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    
    var left = a > b ? b : a
    
    var right = a > b ? a : b
    
    while left != right{
        
        answer += 1
        
        if left % 2 != 0{
            left = (left + 1) / 2
        }else{
            left = left / 2
        }
        
        if right % 2 != 0{
            right = (right + 1) / 2
        }else{
            right = right / 2
        }
        
    }
    return answer
}

print(solution(n1, a1, b1))
