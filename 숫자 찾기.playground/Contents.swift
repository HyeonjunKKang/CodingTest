import Foundation
let num = 29183
let k = 1

func solution(_ num:Int, _ k:Int) -> Int {
    
    // Int -> String으로 변환후 char의 배열로 저장
    var numlist = Array(String(num))
    
    
    for i in 0..<numlist.count{
        //해당 인덱스의 char를 Int로 변환 해서 맞으면 return
        if numlist[i].wholeNumberValue == k {
            return i+1
        }
    }
    return -1 //없으면 -1리턴
}

print(solution(num, k))
