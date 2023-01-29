import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    //분모를 먼저 맞춰서 계산
    //분자
    var num = (numer1 * denom2) + (numer2 * denom1)
    //분모
    var denum = denom1 * denom2
    //최대공약수
    var divi = 1
    
    for i in 1...denum{
        if denum % i == 0 && num % i == 0{
            divi = i
        }
    }
    return [num / divi, denum / divi]
}

print(solution(1, 2, 3, 4))
