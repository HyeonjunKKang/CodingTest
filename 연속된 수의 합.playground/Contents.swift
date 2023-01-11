import Cocoa

let num = 5
let total = 5

func solution(_ num:Int, _ total:Int) -> [Int] {
    var result = [Int](repeating: 0, count: num)
    let average = total / num
    
    for i in  - (average/2)...average + (num + 2){
        print(i)
    }
    
    return result
}

solution(num, total)
