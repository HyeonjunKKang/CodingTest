import Foundation

let data = ["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]


func solution(_ babbling:[String]) -> Int {
    var arr = [String]()
    var count = 0
    //가능한 발음 = "aya", "ye", "woo", "ma"
    
    //입력 데이터 배열에 하나씩 접근한다.
    for i in babbling{
        var data = i
        //한 단어에 aya가 있으면 1, ye가 있으면 2, woo가 있으면 3, ma가 있으면 4로 변환하여 arr에 추가한다.
        data = data.replacingOccurrences(of: "aya", with: "1").replacingOccurrences(of: "ye", with: "2").replacingOccurrences(of: "woo", with: "3").replacingOccurrences(of: "ma", with: "4")
        // ayaye -> 1ye, uuuma -> uuu4, ye -> 2, yemawoo -> 243, ayaa -> 1a
        arr.append(data)
    }
    
    
    for i in arr{
        //만약 1ye 이처럼 저장된 경우는 Int자로형으로 변환할 수 없으니 다음 탐색을 진행하고
        //숫자로만 이루어 진경우 Int형으로 변환할 수 있으므로 가능한 4개의 발음으로만 이루어졌다.
        if let _ = Int(i){
            count += 1
        } else {
            continue
        }
    }
    
    return count
}

print(solution(data))
