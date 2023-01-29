import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    //result에 $0가 포함되어있지 않으면 추가, 아니면 pass
    my_string.forEach{
        if !result.contains($0){
            result += String($0)
        }
    }
    
    
    return result
}

