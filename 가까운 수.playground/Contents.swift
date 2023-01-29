import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    //오름차순 정렬 먼저
    let sorted = array.sorted()
    //차이의 절대값 배열을 생성
    let a = sorted.map{ abs($0 - n)}
            //절대값 배열의 최저값의 인덱스
    return sorted[a.firstIndex(of: a.min()!)!]
}
