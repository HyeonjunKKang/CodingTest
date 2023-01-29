import Foundation

func solution(_ my_string:String) -> Int {
    var number = 0
    
    for i in my_string{
        if let inumber = Int(String(i)){
            number = number + inumber
        }
    }
    return number
}
