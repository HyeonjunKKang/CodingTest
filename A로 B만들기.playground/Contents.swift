import Foundation
let before = "olleh"
let after = "hello"

func solution(_ before:String, _ after:String) -> Int {
    //before의 정렬과 after의 정렬이 일치하면 1, 아니면 0
    return before.sorted() == after.sorted() ? 1 : 0
}
