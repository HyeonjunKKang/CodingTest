import Foundation

/*
조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
조건 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수 입니다.
*/
func solution(_ n:Int) -> Int
{
    //n의 1의 개수
    let binaryn = String(n, radix: 2).filter{$0 == "1"}.count
    // n+1 부터 1씩 증가하며
    var i = n+1
    while true{
        //i의 1의 개수가 n과 같아진다면 리턴
        if String(i, radix: 2).filter{$0 == "1"}.count == binaryn{
            return i
        }
        i += 1
    }
    
    return i
}

solution(15)
