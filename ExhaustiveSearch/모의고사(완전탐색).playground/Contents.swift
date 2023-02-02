import Foundation

func solution(_ answers:[Int]) -> [Int] {
    //1번: 12345
    //2번: 21232425
    //3번: 3311224455
    let supo1 = [1, 2, 3, 4, 5]
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var cnt = [0, 0, 0]
    
    for idx in 0..<answers.count {
        if answers[idx] == supo1[idx % supo1.count] {
            cnt[0] += 1
        }
        if answers[idx] == supo2[idx % supo2.count] {
            cnt[1] += 1
        }
        if answers[idx] == supo3[idx % supo3.count] {
            cnt[2] += 1
        }
    }
    
    let maxscore = cnt.max()
    var result = [Int]()
    for idx in 0...2{
        if cnt[idx] == maxscore{
            result.append(idx + 1)
        }
    }
    return result
}

solution([1, 2, 3, 4, 5])
