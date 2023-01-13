import Foundation

let arr = [7, 77, 17]

func solution(_ array:[Int]) -> Int {
    //1. map과 String()을 활용해 String으로 타입 변환 후.
    //2. join으로 문자열 배열을 하나의 문자열로 합치고
    //3. Array로 Character로 변환후
    //4. filter로 Character(한단어)씩 7인것만 남겨서
    //5. 남은 개수를 센다
    let count = Array(array.map(){ String($0) }.joined()).filter{ $0 == "7"}.count
    
    return count
}

solution(arr)
