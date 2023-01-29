import Foundation

let data = "j1h4h2"
func solution(_ my_string:String) -> [Int] {
    var result = [Int]()
    for i in my_string{
        if i.isNumber{
            result.append(Int(String(i))!)
        }
    }
    
    return result.sorted(){$0 < $1}
}
solution(data)
