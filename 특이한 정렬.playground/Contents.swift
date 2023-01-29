import Foundation
let data = [1, 2, 3, 4, 5, 6]
let inn = 4
func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    let result = numlist.sorted { a, b -> Bool in
        
        let gaba = abs(a - n)
        let gabb = abs(b - n)
        //둘의 차이가 같다면 내림차순
        if gaba == gabb{
            return a > b
        }
        else{
            //아니라면 gab이 큰순으로
            return gaba < gabb
        }
        
    }
    return result
}

solution(data, inn)
