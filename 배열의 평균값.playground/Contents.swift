import Foundation

func solution(_ numbers:[Int]) -> Double {(Double)(numbers.reduce(0){$0 + $1}) / (Double)(numbers.count)}
