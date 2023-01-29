import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    //k = 최상품의 점수, m = 한상자의 사과 수
    //한 상자의 최저품 = p, 상자의 가격은 p*m
    let sorted = score.sorted(){$0 > $1}
    var result = 0
    for i in 0..<sorted.count{
        //m개째 마다 m번째의 숫자 * m번째의 가격
        if (i + 1) % m == 0 && i != 0{
            result += m * sorted[i]
        }
    }
    
    //비싼거 끼리 담자
    
    return result
}

print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))
