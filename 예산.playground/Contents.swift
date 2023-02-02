    import Foundation

    //최대한 많은 부서를 지원
    func solution(_ d:[Int], _ budget:Int) -> Int {
        
        //신청 금액이 적은 순으로 정렬
        var sroted = d.sorted(by: <)
        var money = budget
        var count = 0
        
        for i in sroted{
            //남은 예산이 신청 금액보다 작다면 횟수증가, 머니감소
            if i <= money{
                count += 1
                money -= i
            }else{
                break
            }
        }
        
        return count
    }

solution([2, 2, 3, 3], 10)
