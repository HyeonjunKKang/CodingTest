import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    //5x5 ~ 30x30
    //인형 = 0 ~ 100
    //바구니 크기 = 모든 인형이 다들어감
    //    [[0,0,0,0,0],
    //     [0,0,1,0,3],
    //     [0,2,5,0,1],
    //     [4,2,4,4,2],
    //     [3,5,1,3,1]]
    
    let depth = board.count - 1
    
    var stack = [Int]()
    var Draw = board
    var result = 0
    
    
    for move in moves {
        let row = move - 1
        //깊이를 1씩 증가하며 0이 아닐경우 스택에 추가하고 0해당 위치를 0으로 바꿈
        for dep in 0...depth{
            if Draw[dep][row] != 0{
                stack.append(Draw[dep][row])
                Draw[dep][row] = 0
                break
            }
        }
        
        //stack에 추가가 된 경우 요소가 같으면 +=2
        for _ in 0...stack.count/2{
            if stack.count > 1{
                let last = stack.suffix(2)
                if last.first == last.last{
                    result += 2
                    stack.removeLast()
                    stack.removeLast()
                }
            }
        }
    }
    return result
}

solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]     )
