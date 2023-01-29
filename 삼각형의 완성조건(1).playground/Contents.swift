import Foundation


func solution(_ sides:[Int]) -> Int {
    //정렬 해서 가장 큰 길이는 마지막으로
    //두 선분의 합과 마지막을 비교
    let sorted = sides.sorted()
    return sorted[0] + sorted[1] > sorted[2] ? 1 : 2
}
