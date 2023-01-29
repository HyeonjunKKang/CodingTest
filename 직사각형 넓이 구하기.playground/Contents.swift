import Foundation

let data = [[-1, -1], [1, 1], [1, -1], [-1, 1]]

func solution(_ dots:[[Int]]) -> Int {
    let x = dots.map(){ $0[0] }
    let y = dots.map(){ $0[1] }
    
    return abs((x.max()! - x.min()!) * (y.max()! - y.min()!))
}

print(solution(data))
