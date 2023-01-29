import Foundation

let score = [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000]
let k = 4

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    //명예의 전당 배열
    var hall_of_fame = [Int]()
    //결과배열
    var result = [Int]()
    
    for score in score{
        //하나씩 배열에 추가하고 정렬하면서
        hall_of_fame.append(score)
        hall_of_fame.sort(){ $0 > $1}
        
        //k개가 넘어갈경우(명예의 전당에서 쫓겨날경우)삭제
        if hall_of_fame.count > k{
            hall_of_fame.removeLast()
        }
        //현재 명예의 전당 최하위 점수를 리턴
        result.append(hall_of_fame.last!)
    }
    
    return result
}

print(solution(k, score))
