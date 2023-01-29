import Foundation

func solution(_ food:[Int]) -> String {
    var half = ""
    
    //food의 idx1부터 접근해서
    for idx in 1..<food.count{
        //idx1의 /2만틈 idx를 반복해서 전체의 절반을 먼저 만들고
        for _ in 0..<food[idx] / 2{
            half += String(idx)
        }
    }
    
    //(half + 0 + half.reverse)를 return
    return half + "0" + String(half.reversed())

}
