import Foundation

func solution(_ hp:Int) -> Int {
    //장군 = 5, 병정 = 3, 일개미 = 1
            //장군     병정      //일개미
    return (hp/5) + (hp%5)/3 + (hp%5)%3
}
