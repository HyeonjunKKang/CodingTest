func solution(_ n: Int) -> Int{
    //에라스토스테네스 체
    var isPrime = [Bool](repeating: true, count: n + 1)
    isPrime[0] = false
    isPrime[1] = false
    
    //자기 자신을 제외한 자신의 배수를 false처리
    for i in 2...n{
        if isPrime[i] == false{
            continue
        }
        for j in stride(from: i+i, to: n+1, by: i){
            isPrime[j] = false
        }
    }
    return isPrime.filter{$0 == true}.count
}


solution(10)
