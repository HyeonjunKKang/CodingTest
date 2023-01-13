import Foundation
let quiz = ["3 - 4 = -3", "5 + 6 = 11"]

func solution(_ quiz:[String]) -> [String] {
    //결과를 저장할 배열
    var result = [String]()
    
    //하나의 quiz에 접근하며
    for i in quiz{
        //공백을 기준으로 잘라서 배열을 생성하고
        let tmp = Array(i.split(separator: " "))
        let a = Int(tmp[0])!
        let b = Int(tmp[2])!
        
        //기호에 따라 연산하여 결과가 맞으면 O 아니면 X추가
        if tmp[1] == "-"{
            a - b == Int(tmp[4]) ? result.append("O") : result.append("X")
        }else{
            a + b == Int(tmp[4]) ? result.append("O") : result.append("X")
        }
            
    }
            
    return result
}

solution(quiz)
