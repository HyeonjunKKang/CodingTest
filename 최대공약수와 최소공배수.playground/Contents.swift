func gcd(_ num1: Int, _ num2: Int) -> Int {
    var a = num1 > num2 ? num1 : num2
    var b = num1 > num2 ? num2 : num1
    var r = 0
    while b != 0{
        r = a % b
        a = b
        b = r
    }
    return a
}


func solution(_ n:Int, _ m:Int) -> [Int] {
    
    return [gcd(n, m), n*m / gcd(n, m)]
}

solution(3, 12)
