import Foundation
let inputA = "hello"
let inputB = "ohell"

func solution(_ A:String, _ B:String) -> Int {
    //String을 Character형의 배열로 변환
    var arr = Array(A)
    
    //문자열의 길이만큼
    for i in 0..<arr.count{
        //Character형의 배열을 문자열로 변환 후 B와 비교
        if String(arr) == B {
            //맞다면 반복한 회수 출력
            return i
        }
        //마지막 단어를 가장 앞에 삽입
        arr.insert(arr.last!, at: 0)
        //마지막 단어 삭제
        arr.removeLast()
    }
    //문자열 길이만큼 반복했는데 안됐으면 실패로 -1 리턴
    return -1
}
solution(inputA, inputB)
