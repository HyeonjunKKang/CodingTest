import Foundation

func solution(_ array:[Int]) -> Int {
    var cnt = [String: Int]()
    
    array.forEach({
        cnt[String($0), default: 0 ] += 1
    })
    
    var sorted = cnt.sorted(){ $0.value > $1.value }
    
    let max = sorted.removeFirst()
    
    for i in sorted{
        if i.value == max.value{
            return -1
        }
    }
    
    return Int(max.key)!
}

