func solution(_ n:Int) -> String {
    //n/2만큼 수박을 반복하고 n이 홀수라면 수를 추가한다.
    return "\(String(repeating: "수박", count: n/2))\(n%2==0 ? "" : "수")"
}
