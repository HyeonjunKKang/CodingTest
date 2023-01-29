import Foundation

func solution(_ number:[Int]) -> Int {
    
    
    var arr = [Int]()
    var result = 0
    
    //재귀로 조합을 구현
    func recursion(_ start: Int, _ target_count: Int){
        //갯수가 target_count개, 총 합이 0일 경우 result 1증가
        if arr.count == target_count && arr.reduce(0){$0 + $1} == 0{
            result += 1
            return
        }
        
        for i in start + 1..<number.count{
            arr.append(number[i])
            recursion(i, 3)
            arr.removeLast()
        }
        return
    }
    
    recursion(-1, 3)
    
    return result
}

solution([-2, 3, 0, 2, -5])
