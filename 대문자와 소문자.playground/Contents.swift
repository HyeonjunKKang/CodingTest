import Foundation

let data = "cccCCC"

func solution(_ my_string:String) -> String {
    var result = ""
    for i in my_string{
        if i.isUppercase{
            result += i.lowercased()
        }else{
            result += i.uppercased()
        }
    }
    
    return result
}

solution(data)
