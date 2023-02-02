import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result = [Int]()
    var num = 0
            //시작인덱스, 몇 개를 더할건지, 현재까지 몇 개를 더했는지
    func combi(_ start: Int, _ targetcount: Int,_ nowcount: Int){
        //현재 더한 개수가 목표 개수가 되었을 때
        if nowcount == targetcount{
            //결과 배열에 없다면 추가
            if !result.contains(num){
                result.append(num)
            }
        }else{
            //배열에 추가해서 reduc하지 않고 바로 더해줘서 속도 증가
            for i in start + 1..<numbers.count{
                num += numbers[i]
                combi(i, 2, nowcount + 1)
                num -= numbers[i]
            }
        }
    }
    
    combi(-1, 2, 0)
    
    return result.sorted(by: <)
}

solution([5,0,2,7]    )
