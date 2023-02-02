import Foundation
//N: 전체스테이지의 개수, stage: 게임 사용자가 현재 멈춰있는 스테이지의 번호
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    //스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
    //실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호
    
    //스테이지별 머물고 있는 사용자의 수
    var stage_reach = [Int: Int]()
    for stage in 1...N + 1{
        stage_reach.updateValue(0, forKey: stage)
    }
    
    for stage in stages {
        stage_reach[stage]! += 1
    }
    
    //스테이지의 실패율을 저장할 딕셔너리
    var stage_fail = [Int: Double]()
    for stage in 1...N + 1{
        stage_fail.updateValue(0, forKey: stage)
    }
    
    //i(1) ~ N+1까지 반복하며 i ~ N+1까지로 도달한 사용자 수를 count
    for stage in 1...N+1{
        var reachusers = 0
        for stagenumber in stage...N+1{
            reachusers += stage_reach[stagenumber]!
        }
        //도달한 사람이 0이면 실패율은 0
        if reachusers == 0{
            stage_fail[stage] = 0
        }else{
            //0이 아닐 경우 스테이지에 머무는사람 / 스테이지에 도달한 사람
            stage_fail[stage] = Double(stage_reach[stage]!) / Double(reachusers)
        }
    }
    
    
    //결과는 실패율을 1~N까지로 필터링 한 후
    var result = stage_fail.filter{ $0.key < N + 1}.sorted{ a, b -> Bool in
        //두 값이 같다면 오름차순
        if a.value == b.value{
            return a < b
        }else{
            //아닐 경우 내림차순
            return a.value > b.value
        }
    }
    
    //결과배열
    var answer = [Int]()
    
    for result in result {
        answer.append(result.key)
    }
    
    return answer
}

solution(5, [2, 1, 2, 6, 2, 4, 3, 3]    )
