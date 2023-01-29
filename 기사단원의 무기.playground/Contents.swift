import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var result = [Int]()
    
    for number in 1...number{
        //약수의 개수를 셈
        var count = 0
        
        //16일경우 -> 4까지만 구해도됨
        //약수 1로 16을 유추할수있음
        //2로 8을 유추할 수 있음
        //4 * 4 = 16이므로 이땐 +1
        //이외엔 약수 하나로 두 수를 구할 수 있으니 +2
        for i in 1...Int(sqrt(Double(number))){
            if number % i == 0{
                if( i * i) == number{
                    count += 1
                }else{
                    count += 2
                }
            }
        }
        //limit을 넘는다면 power를, limit을 넘지 않는다면 그대로
        count = count > limit ? power : count
        result.append(count)
        
    }
    return result.reduce(0){$0 + $1}
}
