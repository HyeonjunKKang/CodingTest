import Foundation

func solution(_ n:Int) -> Int {
    
    //7명이면 한판, 8명이면 두판
    return (n - 1) / 7 + 1
}


