import Foundation

let data = "-1 -2 -3 Z"    
func solution(_ s:String) -> Int {
    var num = "0"
    var lastnumber = 0
    let arr = s.split(separator: " ").map(){ $0 }
    
    for i in arr{
        if let number = Int(i){
            num = String(Int(num)! + number)
            lastnumber = number
        }else{
            num = String(Int(num)! - lastnumber)
        }
    }
    return Int(num)!
}

solution(data)
