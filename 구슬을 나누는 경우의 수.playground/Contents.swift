import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    
    //Int의 범위로는 30!을 담지 못한다
    //조합 알고리즘을 이용해 해결
    func combination(_ n: Int, _ r: Int)-> Int{
        if(n==r || r==0){
            return 1
        }else{
            return combination(n - 1, r - 1) + combination(n - 1, r)
        }
    }
    
    return combination(balls, share)
}

solution(5, 3)
