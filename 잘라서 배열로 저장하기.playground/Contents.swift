import Foundation

let str = "abcdef123"
let n = 3

func solution(_ my_str:String, _ n:Int) -> [String] {
    //String을 Character로 변환하여 저장
    var tmp = Array(my_str)
    //n개의 단어를 담을 word변수
    var word = ""
    //결과를 담아 return 할 result변수
    var result = [String]()
    //9글자를 4개씩 자른다면 2번, 9글자를 3개씩 자른다면 3번 반복
    for _ in 0..<my_str.count / n{
        //n개씩 글자를 잘라서
        for _ in 0..<n{
            word.append(tmp.removeFirst())
        }
        //result변수에 추가하고
        result.append(word)
        //word를 초기화
        word = ""
    }
    //9글자를 4개씩 자르면 1글자가 남으므로 아직 단어가 남았다면 추가
    if !tmp.isEmpty{
        result.append(String(tmp))
    }
    return result
}

solution(str, n)
