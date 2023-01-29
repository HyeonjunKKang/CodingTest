import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortedarr = numbers.sorted(){$0 > $1}
    return sortedarr[0] * sortedarr[1]
} 
