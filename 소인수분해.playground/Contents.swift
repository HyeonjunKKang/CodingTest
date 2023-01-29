import Foundation

let data = 2
func solution(_ n:Int) -> [Int] {
    var data = n
    var list = [Int]()
    
    while data > 1{
        for i in 2...data{
            if data % i == 0{
                if !list.contains(i){
                    list.append(i)
                }
                data = data / i
                break
            }
        }
    }
    
    list
    return list
}

solution(data)
