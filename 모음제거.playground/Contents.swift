import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    var aeiou = ["a", "e", "i", "o", "u"]
    
    for i in my_string{
        if !aeiou.contains(String(i)){
            result.append(i)
        }
    }
    return result
}
