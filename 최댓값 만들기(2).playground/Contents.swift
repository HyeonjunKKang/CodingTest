import Foundation
    
func solution(_ numbers:[Int]) -> Int {
    
    var max = numbers[0] * numbers[1]
    for i in 0..<numbers.count{
        for j in i + 1..<numbers.count{
            let multiple = numbers[i] * numbers[j]
            
            if multiple > max{
                max = multiple
            }
        }
    }
    return max
}

