import Foundation

let list = [1, 2, 3, 4, 5]

var arr = [Int]()

func Combination(_ start: Int,_ target: Int){
    if arr.count == target{
        print(arr)
        return
    }else{
        for i in start+1..<list.count{
            arr.append(list[i])
            Combination(i, 3)
            arr.removeLast()
        }
    }
}

Combination(-1, 3)
