import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let cnt = numbers.count
    var result = [Int](repeating: -1, count: cnt)
    var stack = [Int]()
    
    for i in 0..<cnt{
        //스택이 비어있지 않고 && 스택의 마지막이 현재의 숫자보다 크다면
        //[2, 3, 3, 5]일 경우 3은 2보다 크므로 작동, 3, 3,은 스택에 추가만 하고 5가되면 3, 3을 5, 5로 바꾼다
        while !stack.isEmpty && numbers[stack.last!] < numbers[i]{
            result[stack.popLast()!] = numbers[i]
        }
        stack.append(i)
    }

    return result
}

solution([9, 1, 5, 3, 6, 2]    )
