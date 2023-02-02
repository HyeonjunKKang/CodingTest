import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    
    for number in left...right{
        var count = 0
        
        //약수의 개수를 구함
        for j in 1...Int(sqrt(Double(number))){
            if number % j == 0{
                if j * j == number{
                    count += 1
                }else{
                    count += 2
                }
            }
        }
        
        //약수의 개수가 짝수면 더하고 홀수면 뺌
        if count % 2 == 0{
            result += number
        }else{
            result -= number
        }
        
    }
    return result
}

solution(24, 27)
