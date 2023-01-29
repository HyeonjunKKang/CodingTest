import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var result = [Int]()
    //내림차순으로 정렬
    let sorted = emergency.sorted(){$0>$1}
    
    //i의 sorted배열에서의 인덱스를 찾아 추가
    for i in emergency{
        result.append(sorted.firstIndex(of: i)! + 1)
    }
    
    // 3, 76, 24
    //sorted = 76, 24, 3
    //index 3 = 3, 76 = 1, 24 = 2
    return result
}
