import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var combinum = 0
    
    let maxnum = 3000
    
    //에라스토스테네스 체
    var isPrime = [Bool](repeating: true, count: maxnum + 1)
    //0과 1은 소수가 아님
    isPrime[0] = false
    isPrime[1] = false
    
    //자기 자신은 넘어가고
    for i in 2...maxnum{
        if isPrime[i] == false{
            continue
        }
        //i의 배수를 false 처리
        //j는 i+i부터 maxnum+1까지 i만큼 증가
        //ex) 4부터 2씩증가 -> 2는 건너뛰고 4, 6, 8, 10...
        for j in stride(from: i+i, to: maxnum+1, by: i){
            isPrime[j] = false
        }
    }


    //조합 알고리즘 3개를 고르는 알고리즘
    func combi(_ start: Int,_ targetcnt: Int, _ nowcnt: Int){
        //타겟 개수와 더한 개수가 같을경우
        if targetcnt == nowcnt{
            if isPrime[combinum] == false{  //소수가 아니면 return
                return
            }
            answer += 1   //아닐경우 += 1
            return
        }
        
        for i in start+1..<nums.count{
            combinum += nums[i]
            combi(i, 3, nowcnt + 1)
            combinum -= nums[i]
        }
        return
    }
    
    combi(-1, 3, 0)
    return answer
}

solution([1, 2, 7, 6, 4])

let (a, b) = (5, 3)
type(of: (a, b))
