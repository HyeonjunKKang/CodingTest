import Foundation

let data = "dfjardstddetckdaccccdegk"
let n = 4

func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    //0부터 cipher의 크기를 순회
    for i in 0..<cipher.count{
        //idx 3은 문제에서 4번째 글자를 뜻하므로 i + 1을 % code해준다
        if (i+1) % code == 0{
            //현재의 인덱스(nowindex)는 cipher의 시작인덱스부터 i만큼 떨어져있다
            let nowindex = cipher.index(cipher.startIndex, offsetBy: i)
            //cipher[구한인덱스]를 가져오면 substring이므로 String으로 바꾼 후 result에 추가
            result += String(cipher[nowindex])
        }
    }
    
    return result
}

print(solution(data, n))
