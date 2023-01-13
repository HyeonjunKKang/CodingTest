import Foundation
let data = "heLLo"
func solution(_ my_string:String) -> String {
    //모두 소문자로 변경하고 Character의 배열로 변경 후 sort로 오름차순 정렬해서 String으로 리턴
    return String(Array(my_string.lowercased()).sorted())
}

solution(data)
