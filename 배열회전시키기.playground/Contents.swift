import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
    var answer = numbers
    
    if direction == "right"{
        let movedata = answer.popLast()!
        answer.insert(movedata, at: 0)
    }else{
        let movedata = answer.removeFirst()
        answer.append(movedata)
    }
    
    return answer
}

solution([1, 2, 3, 4, 5], "left")
