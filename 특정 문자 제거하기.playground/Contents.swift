import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    //my_string에서 letter을 뺀 문자열
    var result = ""
    
    for i in my_string{
        if String(i) != String(letter){
            result.append(i)
        }
    }
    return result
}


