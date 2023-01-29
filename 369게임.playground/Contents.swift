import Foundation

let input = 29423
func solution(_ order:Int) -> Int {
    return String(order).filter{ $0 == "3" || $0 == "6" || $0 == "9" }.count
}
