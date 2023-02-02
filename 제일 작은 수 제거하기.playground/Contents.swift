func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    var min = arr.min()!
    
    if result.count > 1{
        result.removeFirst(result.min()!)
    }
    else{
        result = arr
    }
    
    result = result == [10] ? [-1] : result
    
    return result
}

solution([10])
