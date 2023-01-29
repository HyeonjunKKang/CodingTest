import Foundation

func solution(_ ingredient:[Int]) -> Int {
    //빵 - 야채 - 고기 - 빵
    //1 - 2 - 3 - 1 일 경우 += 1
    var stack = [Int]()
    var answer = 0
    
    
    for idx in ingredient{
        //하나씩 스택에 추가해주면서
        stack.append(idx)
        //스택의 마지막이 1일경우
        if stack.last == 1{
            //마지막 4개를 가져와서 순서대로 1, 2, 3, 1일 경우
            //1을 증가시키고 가져온 1, 2, 3, 1을 스택에서 제거
            let laststack = stack.suffix(4)
            if laststack == [1, 2, 3, 1]{
                answer += 1
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
            }
        }
    }
    return answer
}
