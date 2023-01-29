import Foundation
let data = "7"
func solution(_ polynomial:String) -> String {
    var x = 0
    var dec = 0
    // 공백을 기준으로 잘라서
    for i in polynomial.split(separator: " "){
        //x일경우 x += 1
        if i == "x"{
            x += 1
            //x가 아니고 __x일경우
        } else if i.contains("x"){
            //__을 더함
            let willplus = i[..<i.firstIndex(of: "x")!]
            x += Int(willplus)!
        }else{
            //아니고 바인딩이 성공한경우(숫자인경우) 숫자자리에 더함
            if let willplus = Int(i){
                dec += willplus
            }
        }
    }
    
    var result = ""
    
    // x항 결과 만들기
    if x == 0 {
    }else if x == 1{
        result += "x"
    }else{
        result += "\(x)x"
    }
    
    //상수항 결과만들기
    if dec == 0{
    }else if x == 0{
        result += "\(dec)"
    }else {
        result += " + \(dec)"
    }
    
    return result
}

print(solution(data))
