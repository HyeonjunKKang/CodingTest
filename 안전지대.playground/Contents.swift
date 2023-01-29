import Foundation

let data = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]]

func solution(_ board:[[Int]]) -> Int {
    var result = 0
    let r_max = board[0].count - 1
    let c_max = board.count - 1
    //현재 좌표를 기준으로한 팔방의 좌표
    let search = [[-1, 0], [-1, 1], [0, 1], [1, 1], [1, 0], [1, -1] ,[0, -1], [-1, -1]]
    for r_idx in 0...r_max{
        for c_idx in 0...c_max{
            //현재 좌표가 지뢰가 없다면
            if board[r_idx][c_idx] == 0{
                var isSafe = true
                //팔방에 대한 검사를 진행
                for move in search{
                    let r_check = r_idx + move[0]
                    let c_check = c_idx + move[1]
                    //체크좌표가 최대좌표 내부라면(0~최대좌표)
                    if (0...r_max) ~= r_check && (0...c_max) ~= c_check{
                        //폭탄이 있을경우 위험지대
                        if board[r_check][c_check] == 1{
                            isSafe = false
                        }
                    }
                }
                if isSafe == true{
                    result += 1
                }
            }
        }
    }
    
    return result
}

solution(data)
