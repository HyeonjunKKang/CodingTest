import Foundation
         
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    //N번째 이용한다면 이용료의 N배
    var amount = 0
    for i in 1...count{
        amount += i * price
    }

    let answer:Int64 = Int64(money) - Int64(amount)
    
    //돈이 남으면 0, 아니면 부족금액
    return answer < 0 ? abs(answer) : 0
}

solution(3, 20, 4)
