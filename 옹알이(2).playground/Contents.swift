import Foundation

func solution(_ babbling:[String]) -> Int {
    //aya, ye, woo, ma
    //같은 발음을 연속해서 할 수 없다.
    var result = [String]()
    
    var count = 0
    
    //사용 가능한 단어를 숫자로 변환
    for babble in babbling {
        result.append(
            babble.replacingOccurrences(of: "aya", with: "1")
                .replacingOccurrences(of: "ye", with: "2")
                .replacingOccurrences(of: "woo", with: "3")
                .replacingOccurrences(of: "ma", with: "4")
        )
    }
    
    //하나의 요소씨 접근하며 숫자로만 이루어진 요소만 검사해서
    for now in result{
        if let replacing = Int(now){
            //연속된 숫자를 포함하고 있지 않다면 1 증가
            if !String(replacing).contains("11") && !String(replacing).contains("22") && !String(replacing).contains("33") && !String(replacing).contains("44"){
                count += 1
            }
        }
    }
    return count
}

solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]    )
