import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var result = [Int]()
    
    //today = 오늘 날짜
    //terms = 약관의 유효기간, 수집된 개인정보 = privacies
    var termdic = [String: Int]()
    terms.forEach{
        let data = $0.split(separator: " ")
        termdic.updateValue(Int(String(data.last!))!, forKey: String(data.first!))
    }
    //현재 날짜를 가져옴
    let now = today.split(separator: ".")
    let nowy = Int(now[0])!
    let nowm = Int(now[1])!
    let nowd = Int(now[2])!
    
    //순회하면서 기간을 확인
    for idx in 0..<privacies.count{
        let splitdata = privacies[idx].split(separator: " ")
        let splitdate = splitdata.first?.split(separator: ".")
        
        //약관의 년, 월과 종류
        let targetkinds = splitdata.last!
        var y = Int(splitdate![0])!
        var m = Int(splitdate![1])!
        let d = Int(splitdate![2])!
        //해당 약관의 유효기간
        let Validity = termdic[String(targetkinds)]!
        
        //유효기간을 더함
        m = m + Validity
        //12월이 넘어갈 경우 년 월 초기화
        // 만약 달이 12보다 클 경우
        
        if(m>12){
            // 달을 12으로 나눴을 때
            if(m % 12 == 0){
                // 12의 배수이면 년도는 바뀌지 않음
                y += m/12 - 1
                // 0이면 12월
                m = 12;
            }else{
                // 12의 배수가 아닌 경우는 년도가 바뀜
                y += m/12
                // 아닐경우 12로 나눈 나머지
                m = m % 12
            }
        }
        
        //비교를 위해 총 일자로 변환
        let sumtarget = (y * 365) + (m * 28) + d
        let sumnow = (nowy * 365) + (nowm * 28) + nowd
        
        if sumtarget <= sumnow{
            result.append(idx + 1)
        }
        
    }
    //파기해야할 개인정보의 번호를 오름차순으로 return
    return result
}
