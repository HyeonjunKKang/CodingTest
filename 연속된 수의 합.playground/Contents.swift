import Cocoa

let num = 5
let total = 5

func solution(_ num:Int, _ total:Int) -> [Int] {
    //num개수만큼 빈 배열을 만든다
    var result = [Int](repeating: 0, count: num)
    //시작 숫자(startnum)를 0으로 설정한다
    var startnum = 0
    //i는 0부터 num이니까 1, 2, 3, 4... 로 1씩 증가한다
    //그러므로 startnum으로 부터 인덱스 1마다 1씩 증가한 숫자가 저장된다.
    for i in 0..<num{
        result[i] = startnum + i
    }
    
    //토탈과 배열의 총 합이 다를경우 반복한다.
    while total != result.reduce(0, {$0 + $1}){
        //현재 배열의 총 합이 total보다 작을 경우 시작 숫자(startnum)1증가.
        if result.reduce(0, {$0 + $1}) < total{
            startnum += 1
        }
        //현재 배열의 총 합이 total보다 클 경우 시작 숫자(startnum)1감소.
        if result.reduce(0, {$0 + $1}) > total{
            startnum -= 1
        }
        //시작숫자(startnum)을 변환시켰으니 배열을 다시 정렬해준다
        for i in 0..<num{
            result[i] = startnum + i
        }
    }
    return result
}

solution(num, total)
