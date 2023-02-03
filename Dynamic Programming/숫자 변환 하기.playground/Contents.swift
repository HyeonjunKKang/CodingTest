import Foundation
var max = Int.max

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    
    func adove1(_ x: Int, _ num: Int) -> Bool{
        return (num >= x)
    }
    func DivideRange(_ num: Int, _ divider: Int) -> Bool{
        return (x...y) ~= num/divider && num % divider == 0
    }
    
    var dp = [Int](repeating: 0, count: y + 1)
    
    for i in x+1...y{
        var a = max, b = max, c = max

        if DivideRange(i, 3) {
            a = dp[i/3]
        }
        
        if DivideRange(i, 2){
            b = dp[i/2]
        }
        
        if adove1(x, i-n){
            c = dp[i-n]
        }
                
        var d = min(a, b)
        d = min(d, c)
        print(dp)
        dp[i] = (d < max) ? d+1 : max
    }

    return dp[y] < max ? dp[y] : -1
}



solution(1, 14, 3)
