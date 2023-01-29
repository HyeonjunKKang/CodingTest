import Foundation


func solution(_ n:Int) -> [Int] {
    var tmp: [Int]{
        var temp: [Int] = []
        for i in 0...n{
            if i % 2 == 1{
                temp.append(i)
            }
        }
        return temp
    }
    return tmp
}
