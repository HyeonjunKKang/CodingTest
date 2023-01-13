import Foundation

let data1 = "ab6CDE443fgh22iJKlmn1o"
let data2 = "6CD"

func solution(_ str1:String, _ str2:String) -> Int {
    
    //str1 내부에 str2가 있다면 해당 글자를 "현준"으로 변경해서 저장
    let result = str1.replacingOccurrences(of: str2, with: "현준")
    
    //result 내부에 "현준"이 있으면 1, 아니면 2 리턴
    return result.contains("현준") ? 1 : 2
}

solution(data1, data2)
