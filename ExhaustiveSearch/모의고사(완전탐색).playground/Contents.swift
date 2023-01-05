import Foundation

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    //각 수험생(1, 2, 3번)들은 아래의 정답을 반복합니다
    let arepeat = [1, 2, 3, 4, 5]
    let brepeat = [2, 1, 2, 3, 2, 4, 2, 5]
    let crepeat = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    //각 수험생별 정답의 수를 저장합니다. 3명이므로 3번 repeat합니다.
    var counting = Array(repeating: 0, count: 3)
    
    //i는 0부터 (answers의 갯수-1)까지 순회하게됩니다.
    for i in 0..<answers.count{
        //%5처리를 해주게 되면 i는 0부터 4까지 반복합니다.
        //0 % 5 = 0
        //1 % 5 = 1
        //2 % 5 = 2
        //3 % 5 = 3
        //4 % 5 = 4
        //5 % 5 = 0
        //6 % 5 = 1
        //같은 원리로 b, c,도 % 8, % 10을 해줍니다.
        if(answers[i] == arepeat[i%5]){ counting[0] += 1 }
        if(answers[i] == brepeat[i%8]){ counting[1] += 1 }
        if(answers[i] == crepeat[i%10]){ counting[2] += 1 }
    }
    
    //최대 정답수를 저장합니다.
    let maxcount = counting.max()
    
    //결과를 return할 배열입니다.
    var result = [Int]()
    
    //3명이므로 0, 1, 2번째의 요소들에 접근합니다.
    for i in 0..<3{
        //만약 각 요소의 수가 maxcount와 같다면 result배열에 추가해줍니다.
                                    // i + 1인 이유는 0번요소는 1번수험생을 뜻하기 떄문입니다.
        if( counting[i] == maxcount) { result.append( i + 1 )}
    }
    
    return result
}
