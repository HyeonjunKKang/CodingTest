import Foundation

//요지 * 2개인 학생을 기준으로 오른쪽은 아직 빌릴 기회가 있고 왼쪽 친구는 내가 아니면 빌릴 기회가 없다
//그러므로 왼쪽 친구를 먼저 빌려줘야 한다.

//n = 전체학생수 lost = 도난당한 학생, reverse = 여벌 체육복을 가져온 학생
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    //학생들의 체육복 수 배열
    var Student = [Int](repeating: 1, count: n)
    //체육복이 도둑맞은 학생은 -1
    for i in lost{
        Student[i-1] -= 1
    }
    
    //여벌을 가져온 학생은 +1
    for i in reserve {
        Student[i-1] += 1
    }
    
    for idx in 0..<n{
        //왼쪽과 오른쪽 친구의 idx
        let lidx = idx - 1
        let ridx = idx + 1
        
        //만약 내가 2개일 경우
        if Student[idx] == 2{
            //왼쪽 친구가 범위 내에 있고 왼쪽 친구가 0이라면
            if (0..<n) ~= lidx && Student[lidx] == 0 && Student[idx] == 2{
                Student[lidx] = 1
                Student[idx] = 1
            }
            //오른쪽 친구가 범위 내에 있고 오른쪽 친구가 0이라면
            if (0..<n) ~= ridx && Student[ridx] == 0 && Student[idx] == 2{
                Student[ridx] = 1
                Student[idx] = 1
            }
        }
    }
    
    return Student.filter{$0 > 0}.count
}

solution(3, [3], [1])
