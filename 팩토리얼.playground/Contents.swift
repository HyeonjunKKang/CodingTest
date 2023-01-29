import Foundation

let data  = 7

func solution(_ n:Int) -> Int {
    var result = 0
    //n = 0! ~ 10! 사이의수
    for i in 0...10{
        //n >= i!이 조건
        if n >= factorial(i){
            result = i
        }else{
            break
        }
    }
    return result
}

func factorial(_ n: Int) -> Int{
    if n > 1{
        return n * factorial(n - 1)
    }
    
    return n
}

solution(data)
