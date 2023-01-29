import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    //i부터 j까지의 배열을 만들고 하나의 문자열로 변경
    let a = (Array(i...j)).map{(String($0))}.joined()
    var result = 0
    
    for i in a{
        //i가 k와 같으면 1증가
        if i.wholeNumberValue == k{
            result = result + 1
        }
    }

    return result
}

