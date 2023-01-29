import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let max_x = board[0] / 2
    let max_y = board[1] / 2
    
    var now = [0, 0]
    
    let move = ["up": [0, 1], "down": [0, -1], "left": [-1, 0], "right": [1, 0]]
    
    
    for i in keyinput{
        let move_x = now[0] + move[i]![0]
        let move_y = now[1] + move[i]![1]
        if abs(move_x) <= max_x && abs(move_y) <= max_y{
            now[0] = move_x
            now[1] = move_y
        }
    }
    return now
}


solution(data, board)
