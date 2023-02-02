import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var amout = 0
    
    for idx in 0..<absolutes.count{
        //참이면 + 거짓이면 -
        if signs[idx]{
            amout += absolutes[idx]
        }else{
            amout -= absolutes[idx]
        }
    }
    return amout
}

solution([4,7,12], [true,false,true] )
