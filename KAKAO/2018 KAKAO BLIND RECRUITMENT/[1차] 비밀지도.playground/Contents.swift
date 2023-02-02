func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    //2진수로 변환시킨다
    var map1 = arr1.map{String($0, radix: 2)}
    var map2 = arr2.map{String($0, radix: 2)}
    
    //n자리 수를 맞추고
    for row in 0..<n{
        while map1[row].count < n{
            map1[row] = "0" + map1[row]
        }
        while map2[row].count < n{
            map2[row] = "0" + map2[row]
        }
        
        //row에 해당하는 지도를 만든다
        var str = ""
        for col in 0..<n{
            if Array(map1[row])[col] == "1" || Array(map2[row])[col] == "1"{
                str += "#"
            }else{
                str += " "
            }
        }
        
        answer.append(str)
        str = ""
    }
    
    
    return answer
}

print(solution(5, [9, 20, 28, 18, 11]
, [30, 1, 21, 17, 28]
)
)
