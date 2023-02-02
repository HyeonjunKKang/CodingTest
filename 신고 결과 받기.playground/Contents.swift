import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    //신고의 중복 제거
    let reportlist = Array(Set(report))
    
    //[신고당한사람: [신고한사람]]
    var reporter = [String: [String]]()
    //메일 횟수 count
    var mail_count = [String: Int]()
    
    //각각 초기화
    for name in id_list{
        reporter.updateValue([], forKey: name)
        mail_count.updateValue(0, forKey: name)
    }
    
    //카운트 시작
    for record in reportlist{
        //a가 b를 신고
        let a = String(record.split(separator: " ")[0])
        let b = String(record.split(separator: " ")[1])
        
        //b는 a에의해 신고당함.
        reporter[b]?.append(a)
    }
    
    var result = [Int]()
        
    
    for I in reporter{
        //I의 신고당한 횟수가 K보다 크면
        if I.value.count >= k{
            //신고 한사람의 카운트를 증가
            for id in I.value{
                mail_count[id]! += 1
            }
        }
    }
    
    //순서대로 결과에 추가
    for name in id_list{
        result.append(mail_count[name]!)
    }

    return result
}

solution(["muzi", "frodo", "apeach", "neo"]    , ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]    , 2)
//solution(["con", "ryan"]    , ["ryan con", "ryan con", "ryan con", "ryan con"]    , 3)
