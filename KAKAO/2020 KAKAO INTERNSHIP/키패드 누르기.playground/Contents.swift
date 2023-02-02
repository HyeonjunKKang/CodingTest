import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    //1, 4, 7은 왼손
    // 3, 6, 9는 오른손
    //2, 5, 8, 0은 가까운 손가락(거리가 같다면 오른손잡이는 오른손, 왼손잡이는 왼손)
    let left = [1, 4, 7]
    let right = [3, 6, 9]
    
    var result = ""
    
    //숫자 마다의 위치인덱스를 생성합니다.
    let numposition = [
        1: [0, 0], 2: [0, 1], 3: [0, 2],
        4: [1, 0], 5: [1, 1], 6: [1, 2],
        7: [2, 0], 8: [2, 1], 9: [2, 2],
                   0: [3, 1]
    ]
    
    //왼손과 오른손의 시작 위치는 다음과 같다
    var L = [3, 0]
    var R = [3, 2]
    
    for number in numbers {
        //왼손에 해당하는 숫자면 L과 왼손의 위치를 바꿔줌
        if left.contains(number){
            result += "L"
            L = numposition[number]!
            //오른손에 해당하는 숫자면 R과 오른손의 위치를 업데이트
        }else if right.contains(number){
            result += "R"
            R = numposition[number]!
        }else{
            //왼, 오른손과 타겟의 거리차이를 구하는데 행 열 1칸당 1이므로 행의 차이, 열의 차이를 더해줌
            let farL = abs(L[0] - numposition[number]![0]) + abs(L[1] - numposition[number]![1])
            let farR = abs(R[0] - numposition[number]![0]) + abs(R[1] - numposition[number]![1])
            
            //거리가 같을경우
            if farL == farR{
                //오른손 잡이인경우 오른손이 움직이고 아닐경우 왼손이 움직임.
                if hand == "right"{
                    result += "R"
                    R = numposition[number]!
                }else{
                    result += "L"
                    L = numposition[number]!
                }
                //다를 경우 거리가 더 짧은 쪽이 움직임
            }else{
                if farL < farR{
                    result += "L"
                    L = numposition[number]!
                }else{
                    result += "R"
                    R = numposition[number]!
                }
            }
        }
    }
    
    
    return result
}

solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]    , "right"  )

//LRLLLRLLRRL
