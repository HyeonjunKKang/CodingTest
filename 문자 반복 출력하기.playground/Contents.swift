import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    //각 문자를 n번만큼 반복
    var result = ""
    
    for i in my_string{
        for _ in 0..<n{
            result += String(i)
        }
    }
    return result
}
