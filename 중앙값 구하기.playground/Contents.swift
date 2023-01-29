import Foundation

func solution(_ array:[Int]) -> Int {
    var tmp = array
    tmp.sort()
    return tmp[array.count / 2]
}
