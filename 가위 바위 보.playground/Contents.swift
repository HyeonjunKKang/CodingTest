import Foundation

func solution(_ rsp:String) -> String {
    var result = ""
    
    for i in rsp{
        switch i{
            case "2":
            result += "0"
            case "0":
            result += "5"
            case "5":
            result += "2"
            default :
            break
        }
    }
    return result
}
