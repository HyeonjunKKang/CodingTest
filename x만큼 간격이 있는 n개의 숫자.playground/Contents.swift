func solution(_ x:Int, _ n:Int) -> [Int64] {
    //x와 n을 입력받아 x부터 x씩 증가하는 숫자 n개를 지니는 리스트
       return (1...n).map{ Int64($0 * x)}
}
