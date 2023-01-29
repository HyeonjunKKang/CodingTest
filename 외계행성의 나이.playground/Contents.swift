import Foundation

func solution(_ age:Int) -> String {
    var result = ""
    //a = 0, b = 1, c= 2
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    
    for i in String(age){
        result += alphabet[Int(String(i))!]
    }
    return result
}

solution(23)
