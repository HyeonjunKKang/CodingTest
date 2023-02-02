import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    //0의 개수를 세고
    let zerocount = lottos.filter{ $0 == 0}.count
    
    //일치하는 숫자의 개수를 센다
    let min = win_nums.filter{ lottos.contains($0) }.count
    
    //최저의 개수는 lottos에서 win_nums와 확인 가능 한 수의 개수
    //최대 개수는 0(확인못하는수)가 전무 일치한다고 가정하는 경우로 일치 개수 + 0의 개수
    
    return [ 7 - (min + zerocount) == 7 ? 6 :  7 - (min + zerocount) , 7 - min  == 7 ? 6 : 7 - min]
}

solution([1, 2, 3, 4, 5, 6]  ,[7, 8, 9, 10, 11, 12]     )
