import Foundation

let t = "3141592"
let p = "271"
func solution(_ t:String, _ p:String) -> Int {
    //t의 부분문자열 중 p보다 작거나 같은수를 count
    var arr = [Int]()
    var result = 0
    for i in 0...t.count - p.count{
        //시작 인덱스와 마지막 인덱스를 구해서
        let startIdx = t.index(t.startIndex, offsetBy: i)
        let endIdx = t.index(startIdx, offsetBy: p.count - 1)
        
        //배열에 추가
        arr.append(Int(t[startIdx...endIdx])!)
    }
    
    //배열의 요소중 p보다 작거나 같은 수를 카운트
    if let intP = Int(p){
        for i in arr{
            if i <= intP{
                result += 1
            }
        }
    }
    
    return result
}

solution(t, p)
