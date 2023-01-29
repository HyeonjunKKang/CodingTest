import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    //지표 번호 순서대로 RT, CF, JM, AN
    //점수가 같다면 사전 순
    //앞에 온게 매우 비동의
    
    var result = ""
    
    //점수 count를 해야함
    var mbti = [String: Int]()
    //dictionary배열을 초기화한다.
    for i in "RTCFJMAN"{
        mbti.updateValue(0, forKey: String(i))
    }
    
    //survey의 개수를 하나씩 접근하면서
    for idx in 0..<survey.count {
        let key1 = survey[idx].first!
        let key2 = survey[idx].last!
        
        //점수가 4일 경우는 점수변화가 없다
        if choices[idx] == 4{
            continue
        }
        
        //점수가 4보다 클 경우는 RT 중 뒤에있는 T의 점수가 증가
        if choices[idx] > 4{
            //5점일 경우 1점증가, 6점일 경우 2점 증가이므로 4에서 점수를 뺀 절대값
            let point = abs(4 - choices[idx])
            let nowvalue = mbti[String(key2)]!
            mbti.updateValue(nowvalue + point, forKey: String(key2))
        }
        
        //점수가 4보다 작을 경우 RT중 앞에있는 R의 점수가 증가
        if choices[idx] < 4{
            //1점일 경우 3점, 2점일 경우 2점 증가이므로 4에서 점수를 뺀 수가 증가
            let point = abs(4 - choices[idx])
            let nowvalue = mbti[String(key1)]!
            mbti.updateValue(nowvalue + point, forKey: String(key1))
        }
        
    }
    
    //MBTI 확정단계
    for key in ["RT", "CF", "JM", "AN"]{
        let front = String(key.first!)
        let rear = String(key.last!)
        
        //사전순으로 출력이므로 뒤가 더 큰경우 뒤, 아닐경우 앞을 추가
        if mbti[front]! < mbti[rear]!{
            result += rear
        }else{
            result += front
        }
    }
    
    return result
}

solution(["AN", "CF", "MJ", "RT", "NA"]    ,[5, 3, 2, 7, 5]    )
